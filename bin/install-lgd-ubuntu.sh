#!/bin/bash

#
# Installation script for LinkedGeoData:
# ./install-lgd.sh data.osm.gz
#
#
#
#

usage="$(basename "$0") options -- program to load a osm.gz file into a postgres database and apply the modifications of lgd to it

where:
    -h  postgres host name
    -d  postgres database name
    -u  postgres user name
    -p  password !!!will be added to ~/.pgpass if not exists!!!
    -f  osm.gz file to load (other formats currently not supported)"

osmFile="$1"

dbHost="localhost"
dbName="osm"
dbUser="postgres"
dbPass="postgres"

lgdPath="~/Projects/Eclipse/linkedgeodata-parent"
postgisPath="/usr/share/postgresql/9.1/contrib/postgis-1.5/"

source ./config.ini


# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Initialize our own variables:

while getopts "?h:U:P:d:f:" opt; do
    case "$opt" in
        \?)
            echoerr "$usage"
            exit 0
            ;;
        h)  dbHost="$OPTARG"
            ;;
        U)  dbUser="$OPTARG"
            ;;
        P)  dbPass="$OPTARG"
            ;;
        d)  dbName="$OPTARG"
            ;;
        f)  osmFile="$OPTARG"
            ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift


#$osmosisVersion="0.42"
#$postgisPath="/usr/share/postgresql/9.1/contrib/postgis-1.5/"
#$osmosisBase="~/osmosis"
#$osmosisPath="$osmosisBasePath/$osmosisVersion"



#if [ ! -f "$osmosisPath" ]; then
#  wget "http://bretth.dev.openstreetmap.org/osmosis-build/osmosis-$osmosisVersion.tgz" -O /tmp
#  tar -zxvf "/tmp/osmosis-$osmosisVersion.tgz"
#  mv "/tmp/osmosis-$osmosisVersion" "$osmosis"
#fi


#ln -s osmosis-0.41/ osmosis

sudo apt-get install postgresql postgresql-contrib-9.1 postgis postgresql-9.1-postgis osmosis

osmosisSqlBasePath="/usr/share/doc/osmosis/examples/"

# Add a password to ~/.pgpass if not exists
passLine="127.0.0.1:*:*:postgres:postgres"

passLineExists=`grep -Fxc "$passLine" ~/.pgpass`

# Download LGD Path if neccessary

lgdPathExists=0
if [ -d "$lgdPath" ]; then
    lgdPathExists=1
fi


# Validate settings and confirm continuation
echo "Your settings are:"
echo "Database"
echo "  Name: $dbName"
echo "  Host: $dbHost"
echo "  Username: $dbUser"
echo "  Password: $dbPass"
echo "  Password already configured: $passLineExists"

echo "Paths:"
echo "  LinkedGeoData Git Repo: $lgdPath (exists: $lgdPathExists)"
echo "  Osmosis SQL files: $osmosisSqlBasePath"
echo "  PostGIS files: $postgisPath"


read -p "Press [Enter] key to start loading..."

if [ $passLineExists -eq 0 ]; then
    echo "$passLine" > ~/.pgpass
fi

if [ $lgdPathExists -eq 0 ]; then
     git clone git@github.com:GeoKnow/LinkedGeoData.git "$lgdPath"
fi



#http://ubuntuforums.org/showthread.php?t=1565533
#awk '/string1/{f=1}END{ if (!f) {print "string2"}}1' file

createdb -h "$dbHost" -U "$dbUser" -P "$dbPass" "$dbName"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d"$dbName" -f "$postgisPath/postgis.sql"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d"$dbName" -f "$postgisPath/spatial_ref_sys.sql"

psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d"$dbName" -f"$osmosisSqlBasePath/pgsimple_schema_0.6.sql"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d"$dbName" -f"$osmosisSqlBasePath/pgsimple_schema_0.6_linestring.sql"

# TODO Only load a file if specified
#wget http://download.geofabrik.de/openstreetmap/europe/germany/sachsen.osm.bz2

bzcat "$osmFile" | osmosis --read-xml - --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"

#svn checkout https://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata --username RavenArkadon@gmail.com
#svn checkout http://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata

#git clone git://github.com/jnphilipp/LGDEditTool.git
#git clone git@github.com:GeoKnow/LinkedGeoData.git

# LGD Modifications
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d "$dbName" -f "$lgdPath/linkedgeodata-core/src/main/sql/LinkedGeoData3\ Physical\ Schema.sql"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d "$dbName" -f "$lgdPath/linkedgeodata-core/src/main/sql/LinkedGeoData3\ Individual\ Views.sql"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d "$dbName" -f "$lgdPath/linkedgeodata-core/src/main/sql/ExtraOsmIndexes.sql"
psql -h "$dbHost" -U "$dbUser" -P "$dbPass" -d "$dbName" -f "$lgdPath/linkedgeodata-core/src/main/sql/TranslateWikiLabels.sql"



