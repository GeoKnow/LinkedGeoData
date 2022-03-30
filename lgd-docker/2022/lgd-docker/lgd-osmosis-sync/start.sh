#!/bin/bash
set -eu

echo "lgd-osm-sync environment:"
env | grep -i "osm\|db\|post"


# Check the database whether the data was loaded
statusKey="lgd-osm-sync:status"

syncDir="osm/sync"


psql "$DB_URL_JDBC" -c "CREATE TABLE IF NOT EXISTS \"status\"(\"k\" text PRIMARY KEY NOT NULL, \"v\" text);"
#psql "$DB_URL" -c "DELETE FROM \"status\" WHERE \"k\" = '$statusKey';"

statusVal=`psql "$DB_URL_JDBC" -tc "SELECT \"v\" FROM \"status\" WHERE "k"='$statusKey'"`

echo "Retrieved status value from $DB_URL_JDBC for key [$statusKey] is '$statusVal'"

mkdir -p "$syncDir"


# If there is a sync URL we can automatically determine the update interval
if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-`lgd osm replicate-sequences -u "$OSM_DATA_SYNC_URL" -d`}
fi

export OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-""}
export OSM_DATA_SYNC_RECHECK_INTERVAL=${OSM_DATA_SYNC_RECHECK_INTERVAL:-"$OSM_DATA_SYNC_UPDATE_INTERVAL"}


cat configuration.txt.dist | envsubst > "$syncDir/configuration.txt"

# If the status is empty, then load the data
if [ -z "$statusVal" ]; then
  #PBF_DATA=http://downloads.linkedgeodata.org/debugging/monaco-170618.osm.pbf
  rm -f "$syncDir/data.osm.pbf"
  curl -L "$OSM_DATA_BASE_URL" --create-dirs -o "$syncDir/data.osm.pbf"

# TODO Fix lgd-createdb to include port
#  lgd-createdb -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -U "$DB_USER" -W "$DB_PASS" -f "data.osm.bpf" 
  lgd-createdb -h "$DB_HOST" -d "$DB_NAME" -U "$DB_USER" -W "$DB_PASS" -f "$syncDir/data.osm.pbf"

  psql "$DB_URL_JDBC" -c "INSERT INTO \"status\"(\"k\", \"v\") VALUES('$statusKey', 'loaded')"
fi


if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  timestamp=`osmconvert --out-timestamp "$syncDir/data.osm.pbf"`
  if [ ! -f "$syncDir/state.txt" ]; then
    lgd osm replicate-sequences -u "$OSM_DATA_SYNC_URL" -t "$timestamp" > "$syncDir/state.txt"
  fi

  cd osm
  /usr/share/linkedgeodata/bin/lgd-run-sync.sh
else
  echo "Note: Data replication disabled as OSM_DATA_SYNC_URL no set"
fi


# NOTE lgd-run-sync uses ./sync/configuration.txt by default


# The sync script picks up the environment variables
# TODO Pass the sync dir to the sync script

