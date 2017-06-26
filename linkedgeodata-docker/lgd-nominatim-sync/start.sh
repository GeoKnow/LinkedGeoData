#!/bin/bash

# Check the database whether the data was loaded
statusKey="nominatim:status"

#DB_URL="postgresql://lgd:lgdpwd@172.18.0.2:5432/lgd"
echo "STARTING - DB_URL = $DB_URL $(pwd)"

cat ./src/settings/local.php.dist | envsubst > ./src/settings/local.php

psql "$DB_URL" -c "CREATE TABLE IF NOT EXISTS \"status\"(\"k\" text PRIMARY KEY NOT NULL, \"v\" text);"
#psql "$DB_URL" -c "DELETE FROM \"status\" WHERE \"k\" = '$statusKey';"

statusVal=`psql "$DB_URL" -tc "SELECT \"v\" FROM \"status\" WHERE "k"='$statusKey'"`

echo "Retrieved status value from $DB_URL for key [$statusKey] is '$statusVal'"

# If the status is empty, then load the data
if [ -z "$statusVal" ]; then 

  #PBF_DATA=http://download.geofabrik.de/europe/monaco-latest.osm.pbf
  PBF_DATA=http://downloads.linkedgeodata.org/debugging/monaco-170618.osm.pbf
  rm -f data.osm.pbf
  curl -L "$PBF_DATA" --create-dirs -o data.osm.pbf

#  sleep 3
#  sync
#  sleep 3
#  service postgresql start && \

    psql "$DB_URL" -c "CREATE ROLE \"nominatim\";" || true && \
    psql "$DB_URL" -c "CREATE ROLE \"www-data\" NOSUPERUSER NOCREATEDB NOCREATEROLE;" || true && \

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

    ./src/utils/setup-patched.php --osm-file data.osm.pbf --import-data --setup-db --create-functions --create-tables --create-partition-tables --create-partition-functions --import-wikipedia-articles --load-data --calculate-postcodes --index --create-search-indices --threads 2

# TODO osmosis init

    psql "$DB_URL" -c "INSERT INTO \"status\"(\"k\", \"v\") VALUES('$statusKey', 'loaded')"

fi


./src/utils/update.php --import-osmosis-all --no-npi

#service postgresql start
#/usr/sbin/apache2ctl -D FOREGROUND

