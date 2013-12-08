
# Download the dataset

dbHost="localhost"
dbUser="postgres"
dbName="lgd"

if [ -f gadm2.shp ]; then

  if [ -f gadm2.shp ]; then

    if [ -f gadm_v2_shp.zip ]; then
      wget -c http://biogeo.ucdavis.edu/data/gadm2/gadm_v2_shp.zip
    fi

    unzip gadm_v2_shp.zip

  fi

fi

shp2pgsql -W LATIN1 -S -s4326 gadm2.shp lgd_gadm  | psql -h "$dbHost" -d "$dbName" -U "$dbUser"

psql -h "$dbHost" -d "$dbName" -U "$dbUser" gadm2.sql

