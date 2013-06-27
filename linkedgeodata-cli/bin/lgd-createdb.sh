#!/bin/bash

#
# Script for creating a LinkedGeoData database on Postgres
#

usage="$(basename "$0") options -- program to load a PBF file into a postgres database and apply the modifications of lgd to it

where:
    -h  postgres host name
    -d  postgres database name
    -u  postgres user name
    -p  password !!!will be added to ~/.pgpass if not exists!!!
    -f  .pbf file to load (other formats currently not supported)"

#
# Hard coded profile paths, with folder precedence order: local > home > etc
#
configFiles[0]="/etc/linkedgeodata/lgd.conf.dist"
configFiles[1]="/etc/linkedgeodata/lgd.conf"
configFiles[2]="./lgd.conf.dist"
configFiles[3]="./lgd.conf"

for configFile in "${configFiles[@]}"; do
        [ -f "$configFile" ] && source "$configFile"
done


#source config.ini.dist
#lgdSqlPath="$lgdBasePath/linkedgeodata-core/src/main/sql/"
#postgisPath="/usr/share/postgresql/9.1/contrib/postgis-2.0"
#osmosisSqlPath="/usr/share/doc/osmosis/examples/"
# Use a config.ini file to override any of the settings of this file
#[ -f "./config.ini" ] && source ./config.ini


# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

# Initialize our own variables:

#while getopts "?P:" opt; do
#    case "$opt" in
#        P)  profileName="$OPTARG"
#            ;;
#    esac
#done

#for profilePath in "${profilePaths[@]}"; do
#        profileFile="$profilePath/$profileName.conf"
#        [ -f "$profileFile" ] && source "$profileFile"
#done

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



# Determine if we have to add a password to ~/.pgpass
passLine="$dbHost:*:*:$dbUser:$dbPass"

if [ -f ~/.pgpass ]; then
    passLineExists=`grep -Fxc "$passLine" ~/.pgpass`
else
    passLineExists=0
fi


# Confirm settings before continuation
dbPassText=`echo "$dbPass" | cut -c1-2`
echoerr "-------------------------------------------------------------------"
echoerr "Your settings are:"
echoerr "Database"
echoerr "  Name: $dbName"
echoerr "  Host: $dbHost"
echoerr "  Username: $dbUser"
echoerr "  Password: $dbPassText..."
echoerr "  Password already configured: $passLineExists"
echoerr "  OSM file to load: $osmFile"
echoerr ""
echoerr "Paths:"
echoerr "  Osmosis SQL files: $osmosisSqlPath"
echoerr "  PostGIS files: $postgisPath"
echoerr "  LGD-SQL files: $lgdSqlPath"
echoerr ""
echoerr "-------------------------------------------------------------------"

if [ -z "$osmFile" ]; then
    echoerr "Error: No osm file specified for loading"
    exit 1
fi


read -p "Press [Enter] key to start loading"


if [ $passLineExists -eq 0 ]; then
    echo "$passLine" >> ~/.pgpass
    chmod 600 ~/.pgpass
fi


createdb -h "$dbHost" -U "$dbUser" "$dbName"
createlang -h "$dbHost" -U "$dbUser" plpgsql "$dbName"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/postgis.sql"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/spatial_ref_sys.sql"

psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6.sql"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6_linestring.sql"

#wget http://download.geofabrik.de/openstreetmap/europe/germany/sachsen.osm.bz2

if [ ! -z "$osmFile" ]; then
#    bzcat "$osmFile" | osmosis --read-xml - --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
    osmosis --read-pbf "$osmFile" --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
fi

#svn checkout https://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata --username RavenArkadon@gmail.com
#svn checkout http://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata

#git clone git://github.com/jnphilipp/LGDEditTool.git
#git clone git@github.com:GeoKnow/LinkedGeoData.git


"$lgdPrepareInterlinksCmd" > "/tmp/linkedgeodata/interlinks.sql"

# LGD Modifications
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Physical Schema.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Individual Views.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/ExtraOsmIndexes.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/Mappings.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/TranslateWikiLabels.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "/tmp/linkedgeodata/interlinks.sql"


