#!/bin/bash

echo "lgd-db environment:"
env | grep -i "osm\|db\|post"
#echo "args: $@"

mkdir -p "/etc/postgresql/${POSTGRES_VERSION}/main/"
cat "/app/postgresql/postgresql.conf.dist" | envsubst > "/etc/postgresql/${POSTGRES_VERSION}/main/postgresql.conf"

#cat "/etc/postgresql/${POSTGRES_VERSION}/main/postgresql.conf"

docker-entrypoint.sh "$@"

