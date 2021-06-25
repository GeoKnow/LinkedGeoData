#!/bin/bash
set -eu

sleep 2
cd src
find .
echo "pwd: " `pwd`

echo "lgd-osm-sync environment:"
env | grep -i "osm\|db\|post"


# Create the .pgpass file in the volume so that it can be inspected more easily
echo "$DB_HOST:$DB_PORT:$DB_NAME:$DB_USER:$DB_PASS" > .pgpass
chmod 600 .pgpass
sleep 2
mv /root/.pgpass


# Check the database whether the data was loaded
statusKey="nominatim:status"

syncDir="settings"

# Remove the tiger geocoder extension
psql "$DB_URL" -c "DROP EXTENSION IF EXISTS postgis_tiger_geocoder"


psql "$DB_URL" -c "CREATE TABLE IF NOT EXISTS \"status\"(\"k\" text PRIMARY KEY NOT NULL, \"v\" text);"
#psql "$DB_URL" -c "DELETE FROM \"status\" WHERE \"k\" = '$statusKey';"

statusVal=`psql "$DB_URL" -tc "SELECT \"v\" FROM \"status\" WHERE "k"='$statusKey'"`

echo "Retrieved status value from $DB_URL for key [$statusKey] is '$statusVal'"

mkdir -p "$syncDir"


# If there is a sync URL we can automatically determine the update interval
if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-`lgd-osm-replicate-sequences -u "$OSM_DATA_SYNC_URL" -d`}
fi

export OSM_DATA_SYNC_UPDATE_INTERVAL=${OSM_DATA_SYNC_UPDATE_INTERVAL:-""}
export OSM_DATA_SYNC_RECHECK_INTERVAL=${OSM_DATA_SYNC_RECHECK_INTERVAL:-"$OSM_DATA_SYNC_UPDATE_INTERVAL"}


cat ./settings/configuration.txt.dist | envsubst > "$syncDir/configuration.txt"
cat ./settings/local.php.dist | envsubst > ./settings/local.php

# If the status is empty, then load the data
if [ -z "$statusVal" ]; then 

  rm -f "$syncDir/data.osm.pbf"
  curl -L "$OSM_DATA_BASE_URL" --create-dirs -o "$syncDir/data.osm.pbf"

#    psql "$DB_URL" -c "CREATE ROLE \"nominatim\";" || true && \
#    psql "$DB_URL" -c "CREATE ROLE \"www-data\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" || true && \

#    psql "$DB_URL" -c "CREATE DATABASE IF NOT EXISTS nominatim" && \
#    sudo -u postgres psql postgres -c "DROP DATABASE IF EXISTS nominatim" && \
#    useradd -m -p password1234 nominatim && \
#    chown -R nominatim:nominatim ./src && \

#    ./src/utils/setup.php --osm-file /app/src/data.osm.pbf --all --threads 2 && \

# we want all minus createdb

#    cat ./src/utils/setup.php \
#        | sed -r "s|'psql -p.*|\"psql \" . str_replace('pgsql', 'postgresql', CONST_Database_DSN);|" \
#        | sed -r "s|.*createlang.*||" \
#        > ./src/utils/setup-patched.php

    ./utils/setup-patched.php --osm-file "$syncDir/data.osm.pbf" --import-data --setup-db --create-functions --create-tables --create-partition-tables --create-partition-functions --import-wikipedia-articles --load-data --calculate-postcodes --index --create-search-indices --threads 2

# TODO osmosis init

    psql "$DB_URL" -c "INSERT INTO \"status\"(\"k\", \"v\") VALUES('$statusKey', 'loaded')"

fi


if [ ! -z "$OSM_DATA_SYNC_URL" ]; then
  timestamp=`osmconvert --out-timestamp "$syncDir/data.osm.pbf"`
  if [ ! -f "$syncDir/state.txt" ]; then
    lgd-osm-replicate-sequences -u "$OSM_DATA_SYNC_URL" -t "$timestamp" > "$syncDir/state.txt"
  fi

  ./utils/update-patched.php --import-osmosis-all --no-npi
else
  echo "Note: Data replication disabled as OSM_DATA_SYNC_URL no set"
fi




#service postgresql start
#/usr/sbin/apache2ctl -D FOREGROUND

