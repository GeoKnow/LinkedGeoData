#!/bin/bash

#
# Installation script for LinkedGeoData:
# ./install-lgd.sh data.osm.gz
#
#
#
#

usage="$(basename "$0") options -- program to load a PBF file into a postgres database and apply the modifications of lgd to it

where:
    -h  postgres host name
    -d  postgres database name
    -u  postgres user name
    -p  password !!!will be added to ~/.pgpass if not exists!!!
    -f  osm.gz file to load (other formats currently not supported)"

source config.ini.dist

lgdBasePath="../"
lgdSqlPath="$lgdBasePath/linkedgeodata-core/src/main/sql/"

postgisPath="/usr/share/postgresql/9.1/contrib/postgis-2.0"

osmosisSqlPath="/usr/share/doc/osmosis/examples/"


# Use a config.ini file to override any of the settings of this file
[ -f "./config.ini" ] && source ./config.ini


# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Initialize our own variables:

while getopts "?h:U:W:d:f:" opt; do
    case "$opt" in
        \?)
            echoerr "$usage"
            exit 0
            ;;
        h)  dbHost="$OPTARG"
            ;;
        U)  dbUser="$OPTARG"
            ;;
        W)  dbPass="$OPTARG"
            ;;
        d)  dbName="$OPTARG"
            ;;
        f)  osmFile="$OPTARG"
            ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift

# Install all required dependencies
sudo apt-get install postgresql postgresql-contrib-9.1 postgis postgresql-9.1-postgis osmosis


# Determine if we have to add a password to ~/.pgpass
passLine="$dbHost:*:*:$dbUser:$dbPass"

if [ -f ~/.pgpass ]; then
    passLineExists=`grep -Fxc "$passLine" ~/.pgpass`
else
    passLineExists=0
fi


# Determine whether we have to checkout the LinkedGeoData git repo
lgdBasePathExists=0
if [ -d "$lgdBasePath" ]; then
    lgdBasePathExists=1
fi


# Confirm settings before continuation
echo "-------------------------------------------------------------------"
echo "Your settings are:"
echo "Database"
echo "  Name: $dbName"
echo "  Host: $dbHost"
echo "  Username: $dbUser"
echo "  Password: $dbPass"
echo "  Password already configured: $passLineExists"

echo "Paths:"
echo "  LinkedGeoData Git Repo: $lgdBasePath (exists: $lgdBasePathExists)"
echo "  Osmosis SQL files: $osmosisSqlPath"
echo "  PostGIS files: $postgisPath"

echo "-------------------------------------------------------------------"
read -p "Press [Enter] key to start loading"

if [ $passLineExists -eq 0 ]; then
    echo "$passLine" >> ~/.pgpass
    chmod 600 ~/.pgpass
fi

if [ $lgdBasePathExists -eq 0 ]; then
     git clone git@github.com:GeoKnow/LinkedGeoData.git "$lgdBasePath"
fi

createdb -h "$dbHost" -U "$dbUser" "$dbName"
createlang -h "$dbHost" -U "$dbUser" plpgsql "$dbName"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/postgis.sql"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/spatial_ref_sys.sql"

psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6.sql"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6_linestring.sql"

# TODO Only load a file if specified
#wget http://download.geofabrik.de/openstreetmap/europe/germany/sachsen.osm.bz2

if [ ! -z "$osmFile" ]; then
#    bzcat "$osmFile" | osmosis --read-xml - --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
    osmosis --read-pbf "$osmFile" --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
fi

#svn checkout https://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata --username RavenArkadon@gmail.com
#svn checkout http://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata

#git clone git://github.com/jnphilipp/LGDEditTool.git
#git clone git@github.com:GeoKnow/LinkedGeoData.git

# LGD Modifications
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Physical Schema.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Individual Views.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/ExtraOsmIndexes.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/Mappings.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/TranslateWikiLabels.sql"



