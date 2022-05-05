#!/bin/bash
set -aeu

# Init an absent sync url to an empty string
: ${OSM_DATA_SYNC_URL:=}

export NOMINATIM_PROJECT_DIR=~/nominatim-data
mkdir -p "$NOMINATIM_PROJECT_DIR"

NOMINATIM_ENV="$NOMINATIM_PROJECT_DIR/.env" 
if [ ! -f "$NOMINATIM_ENV" ]; then
	echo 'NOMINATIM_FLATNODE_FILE=flatnode.file' > "$NOMINATIM_ENV"
fi

: ${DB_DSN_PDO:=${NOMINATIM_DATABASE_DSN}}
: ${NOMINATIM_DATABASE_DSN:=${DB_DSN_PDO}}

echo "lgd-nominatim-sync environment:"
env | grep -Ei "^(osm|db|post|pg)"

# Create the .pgpass file in the volume so that it can be inspected more easily
echo "$DB_HOST:$DB_PORT:$DB_NAME:$DB_USER:$DB_PASS" > .pgpass
chmod 600 .pgpass
cp .pgpass /root/.pgpass


# Check the database whether the data was loaded
statusKey="nominatim:status"

syncDir="settings"

# Remove the tiger geocoder extension
psql "$DB_URL_JDBC" -c "DROP EXTENSION IF EXISTS postgis_tiger_geocoder"


psql "$DB_URL_JDBC" -c "CREATE TABLE IF NOT EXISTS \"status\"(\"k\" text PRIMARY KEY NOT NULL, \"v\" text);"

statusVal=`psql "$DB_URL_JDBC" -tc "SELECT \"v\" FROM \"status\" WHERE "k"='$statusKey'"`

echo "Retrieved status value from $DB_URL_JDBC for key [$statusKey] is '$statusVal'"

mkdir -p "$syncDir"


# If there is a sync URL we can automatically determine the update interval
if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-`lgd osm replicate-sequences -u "$OSM_DATA_SYNC_URL" -d`}
fi

# Simply use 1/10 of the update interval as the recheck interval's fallback value
export OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-"0"}
export OSM_DATA_SYNC_RECHECK_INTERVAL=${OSM_DATA_SYNC_RECHECK_INTERVAL:-$((OSM_DATA_SYNC_UPDATE_INTERVAL / 10))}

export NOMINATIM_REPLICATION_UPDATE_INTERVAL="${OSM_DATA_SYNC_UPDATE_INTERVAL}"
export NOMINATIM_REPLICATION_RECHECK_INTERVAL="${OSM_DATA_SYNC_RECHECK_INTERVAL}"

# If the status is empty, then load the data
if [ -z "$statusVal" ]; then 

  # Download data
  rm -f "$syncDir/data.osm.pbf"
  curl -L "$OSM_DATA_BASE_URL" --create-dirs -o "$syncDir/data.osm.pbf"

  # Create www-data user
  PGPASSWORD="$DB_PASS" createuser -U "$DB_USER" -h "$DB_HOST" www-data || true

  ./nominatim import --osm-file "$syncDir/data.osm.pbf"
  ./nominatim special-phrases --import-from-wiki

	# ./utils/setup-patched.php --osm-file "$syncDir/data.osm.pbf" --import-data --setup-db --create-functions --create-tables --create-partition-tables --create-partition-functions --import-wikipedia-articles --load-data --calculate-postcodes --index --create-search-indices --threads 2

# TODO osmosis init

  psql "$DB_URL_JDBC" -c "INSERT INTO \"status\"(\"k\", \"v\") VALUES('$statusKey', 'loaded')"

fi


if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  echo "Starting replication with $OSM_DATA_SYNC_URL with update/recheck intervals: $NOMINATIM_REPLICATION_UPDATE_INTERVAL/$NOMINATIM_REPLICATION_RECHECK_INTERVAL"
  # Multiple inits don't cause errors but may this lead to missing updates?
  ./nominatim replication --init

  # Replication in catch-up mode terminates when it caught up
  ./nominatim replication --catch-up

  # Default replication runs forever
  ./nominatim replication
else
  echo "Note: Data replication disabled as OSM_DATA_SYNC_URL no set"
fi




#service postgresql start
#/usr/sbin/apache2ctl -D FOREGROUND

