#!/bin/bash

#
# Script for creating a LinkedGeoData database on Postgres
#

# Mapping of file extensions to osmosis options
declare -A extToReadMode

#extToReadMode["bz2"]="--fast-read-xml"
#extToReadMode["gz"]="--fast-read-xml"

extToReadMode["bz2"]="--read-xml"
extToReadMode["gz"]="--read-xml"

extToReadMode["pbf"]="--read-pbf"


usage="$(basename "$0") options -- program to load an OpenStreetMap file (in PBF or XML format) into a postgres database and apply the modifications of lgd to it

where:
    -h  postgres host name
    -p  postgres port
    -d  postgres database name
    -U  postgres user name
    -W  password !!!will be added to ~/.pgpass if not exists!!!
    -P  (optional) /etc/sparqlify/profiles.d/ profile name
    -f  the OSM file to load (must have one of these extensions: ${!extToReadMode[@]})"

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


postgisPath="/usr/share/postgresql/9.3/contrib/postgis-2.1/"

# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.


while getopts "?h:p:U:W:d:f:P:" opt; do
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
        p)  dbPort="$OPTARG"
            ;;
	P)  profileName="$OPTARG"
            profileFile="/etc/sparqlify/profiles.d/${profileName}.conf"
            if [ ! -f "$profileFile" ]; then
              echoerr "Profile file $profileFile does not exist"
              exit 1
            fi

            source "$profileFile"
            ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift


dbPort=${dbPort:-5432}

# Determine if we have to add a password to ~/.pgpass
passLine="$dbHost:$dbPort:$dbName:$dbUser:$dbPass"

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
echoerr "  Port: $dbPort"
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
    echoerr ""
    echoerr "$usage"
    exit 1
fi

# Determine whether we have a pbf or xml file
osmFileExt=${osmFile##*.}

readMode=${extToReadMode["$osmFileExt"]}

if [ -z "$readMode" ]; then
    echoerr "File extension not supported. Must be one of: ${!extToReadMode[@]}"
    exit 1
fi



# Wait fo the user to press a key
read -p "Press [Enter] key to start loading"


if [ $passLineExists -eq 0 ]; then
    echo "$passLine" >> ~/.pgpass
    chmod 600 ~/.pgpass
fi


createdb -h "$dbHost" -p "$dbPort" -U "$dbUser" "$dbName"

createlang -h "$dbHost" -p "$dbPort" -U "$dbUser" plpgsql "$dbName"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -c "CREATE EXTENSION hstore;"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -c "CREATE EXTENSION postgis;"

# old approach - needs to be used if create extension does not work
#psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/postgis.sql"
#psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/spatial_ref_sys.sql"

# old approach - using the snapshot schema first and converting it to the simple schema should give much better loading performance
#psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$osmosisSqlPath/pgsimple_schema_0.6.sql"
#psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$osmosisSqlPath/pgsimple_schema_0.6_linestring.sql"

psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$osmosisSqlPath/pgsnapshot_schema_0.6.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$osmosisSqlPath/pgsnapshot_schema_0.6_linestring.sql"



#wget http://download.geofabrik.de/openstreetmap/europe/germany/sachsen.osm.bz2

if [ ! -z "$osmFile" ]; then
#    bzcat "$osmFile" | osmosis --read-xml - --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
#    osmosis "$readMode" "$osmFile" --write-pgsimp host="$dbHost:$dbPort" database="$dbName" user="$dbUser" password="$dbPass"
    osmosis "$readMode" "$osmFile" --write-pgsql host="$dbHost:$dbPort" database="$dbName" user="$dbUser" password="$dbPass" nodeLocationStoreType="CompactTempFile"

fi

psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/convert-osm-snapshot-to-simple.sql"


#svn checkout https://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata --username RavenArkadon@gmail.com
#svn checkout http://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata

#git clone git://github.com/jnphilipp/LGDEditTool.git
#git clone git@github.com:GeoKnow/LinkedGeoData.git

lgdTmpDir="/tmp/linkedgeodata"

rm -rf "$lgdTmpDir"
mkdir -p "$lgdTmpDir"
"$lgdPrepareInterlinksCmd" > "$lgdTmpDir/interlinks.sql"

# LGD Modifications
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Physical Schema.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Individual Views.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/ExtraOsmIndexes.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/Mappings.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/TranslateWikiLabels.sql"
psql -h "$dbHost" -p "$dbPort" -U "$dbUser" -d "$dbName" -f "/tmp/linkedgeodata/interlinks.sql"


