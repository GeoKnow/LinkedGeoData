#!/bin/bash

# Implicitly export (a)ll variables; (e)rrors in pipe cause termination
set -ae

# Note: This script restarts itself under the postgres user if needed

# Binding of the DB_* LGD properties to the postgres database conf
# Prefer DB_* over POSTGRES_* and PG* attrtibutes
# - but initialize one from the other if any is not set

: ${DB_NAME:=${POSTGRES_DB}}
: ${POSTGRES_DB:=${DB_NAME}}

: ${DB_PORT:=${PGPORT}}
: ${PGPORT:=${DB_PORT}}

: ${DB_USER:=${POSTGRES_USER}}
: ${POSTGRES_USER:=${DB_USER}}

: ${DB_PASS:=${POSTGRES_PASSWORD}}
: ${POSTGRES_PASSWORD:=${DB_PASS}}

# Default values for selected attributes
# a more elegant solution would use some general mechanism 
# to adress all variables in a postgresql.conf file

: ${DB_PORT:=5432}
: ${DB_SHARED_BUFFERS:=2GB}
: ${DB_WORK_MEM:=256MB}
: ${DB_MAINTENANCE_WORK_MEM:=256MB}
: ${DB_EFFECTIVE_CACHE_SIZE:=2GB}

# Source env and functions
. ./usr/local/bin/docker-entrypoint.sh

_custom_init_start() { # Runs as root
	# Print out relevant environment vars for inspection
	echo "lgd-db environment:"
	env | grep -Ei "^(osm|db|post|pg)"

	chown -R postgres:postgres /conf
}

_custom_init_finish() { # Runs as postgres
	cat "/conf/postgresql.conf.dist" | envsubst > "$PGDATA/postgresql.conf"
	echo "postgresql.conf rewritten from environment"
}

# Setup snippet from ./usr/local/bin/docker-entrypoint.sh
# Initializes the dir so that we can envsubst the config afterwards

# Custom config? Let's make it hard! https://github.com/docker-library/postgres/issues/835

_main() {
	# if first arg looks like a flag, assume we want to run postgres server
	if [ "${1:0:1}" = '-' ]; then
		set -- postgres "$@"
	fi

	if [ "$1" = 'postgres' ] && ! _pg_want_help "$@"; then
		docker_setup_env
		# setup data directories and permissions (when run as root)
		docker_create_db_directories

		if [ "$(id -u)" = '0' ]; then
			_custom_init_start

			# then restart script as postgres user
			exec su-exec postgres "$BASH_SOURCE" "$@"
		fi

		# only run initialization on an empty data directory
		if [ -z "$DATABASE_ALREADY_EXISTS" ]; then
			docker_verify_minimum_env

			# check dir permissions to reduce likelihood of half-initialized database
			ls /docker-entrypoint-initdb.d/ > /dev/null

			docker_init_database_dir
			pg_setup_hba_conf "$@"

			# PGPASSWORD is required for psql when authentication is required for 'local' connections via pg_hba.conf and is otherwise harmless
			# e.g. when '--auth=md5' or '--auth-local=md5' is used in POSTGRES_INITDB_ARGS
			export PGPASSWORD="${PGPASSWORD:-$POSTGRES_PASSWORD}"
			docker_temp_server_start "$@"

			docker_setup_db
			docker_process_init_files /docker-entrypoint-initdb.d/*

			docker_temp_server_stop
			unset PGPASSWORD

			echo
			echo 'PostgreSQL init process complete; ready for start up.'
			echo

			_custom_init_finish
		else
			echo
			echo 'PostgreSQL Database directory appears to contain a database; Skipping initialization'
			echo
		fi
	fi

	# exec "$@"
}

if ! _is_sourced; then
	_main "$@"
fi

docker-entrypoint.sh "$@"

