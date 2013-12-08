
# Download the dataset

dbHost='localhost'
dbUser='postgres'
dbName='lgd'

if [ ! -f 'gadm2.shp' ]; then

    if [ ! -f 'gadm_v2_shp.zip' ]; then
      wget -c 'http://biogeo.ucdavis.edu/data/gadm2/gadm_v2_shp.zip'
    fi

    unzip 'gadm_v2_shp.zip'

fi

shp2pgsql -W 'LATIN1' -s4326 'gadm2.shp' 'lgd_gadm2_raw'  | psql -h "$dbHost" -d "$dbName" -U "$dbUser"

psql -h "$dbHost" -d "$dbName" -U "$dbUser" -f 'gadm2.sql'

