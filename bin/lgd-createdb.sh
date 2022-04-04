#!/bin/bash

SCRIPT_FILE="$(realpath "${BASH_SOURCE:-$0}")"
SCRIPT_DIR="$(dirname "$SCRIPT_FILE")"

#
# Script for creating a LinkedGeoData database on Postgres
#

# Mapping of file extensions to osmosis options
declare -A extToReadMode

extToReadMode["bz2"]="--fast-read-xml"
extToReadMode["gz"]="--fast-read-xml"
extToReadMode["pbf"]="--read-pbf"

# File name extensions to remove in order to obtain a dataset name
declare -A cutFileSuffixes

for key in "${!extToReadMode[@]}"; do
  cutFileSuffixes[".$key"]=1
done

cutFileSuffixes[".osm"]=1
cutFileSuffixes["-latest"]=1

usage="$(basename "$0") options -- program to load an OpenStreetMap file (in PBF or XML format) into a postgres database and apply the modifications of lgd to it

where:
    -h  postgres host name
    -d  postgres database name
    -U  postgres user name
    -W  password !!!will be added to ~/.pgpass if not exists!!!
    -f  the OSM file to load (must have one of these extensions: ${!extToReadMode[@]})
    -n  dataset name (will be used e.g in the file names of dumps)
    -N  no nominatim - skip nominatim setup
"

#
# Hard coded profile paths, with folder precedence order: local > home > etc
#
configFiles[0]="/etc/linkedgeodata/lgd.conf.dist"
configFiles[1]="/etc/linkedgeodata/lgd.conf"
configFiles[2]="$SCRIPT_DIR/lgd.conf.dist"
configFiles[3]="./lgd.conf.dist"
configFiles[4]="./lgd.conf"


for configFile in "${configFiles[@]}"; do
        [ -f "$configFile" ] && source "$configFile"
done


# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.


datasetName=""
while getopts "h:U:W:d:f:P:n:N" opt; do
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
        n)  datasetName="$OPTARG"
            ;;
        N)  noNominatim=true
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


# Determine if we have to add a password to ~/.pgpass
passLine="$dbHost:*:*:$dbUser:$dbPass"

if [ -f ~/.pgpass ]; then
    passLineExists=`grep -Fxc "$passLine" ~/.pgpass`
else
    passLineExists=0
fi


[ -n "$osmFile" ]
osmFileSpecified=$?

[ -f "$osmFile" ]
osmFileExists=$?

#echo "hasFile: $osmFile -> [$osmFileSpecified]"

# Analyse a given osm file
if [ $osmFileExists -eq 0 ]; then

   # Get the absolute path to the osm file (needed for nominatim)
   osmFile=`readlink -f "$osmFile"`

  # Determine the date of the data being loaded so we can use it for e.g. dump metadata
  # NOTE Disabled, because using the latest date of an entity in the database will work with replication
#  timestamp=`osmconvert --out-timestamp "$osmFile"`


  # Get the dataset name
  if [ -z "$datasetName" ]; then
    tmp=`basename "$osmFile"`

    while [ "$tmp" != "$datasetName" ]; do
      datasetName="$tmp"
      for key in "${!cutFileSuffixes[@]}"; do
        tmp=`echo "$tmp" | sed "s|$key$||"` 
      done
    done
  fi

fi

#Replace whitespaces in the datasetName
datasetName=`echo $datasetName | sed 's| |-|'`


# Confirm settings before continuation
dbPassText=`echo "$dbPass" | cut -c1-2`
echoerr "-------------------------------------------------------------------"
echoerr "Your settings are:"
echoerr ""
echoerr "Database"
echoerr "  Name: $dbName"
echoerr "  Host: $dbHost"
echoerr "  Username: $dbUser"
echoerr "  Password: $dbPassText..."
echoerr "  Password already configured: $passLineExists"
echoerr ""
echoerr "Paths"
echoerr "  Osmosis SQL files: $osmosisSqlPath"
#echoerr "  PostGIS files: $postgisPath"
echoerr "  LGD-SQL files: $lgdSqlPath"
echoerr ""
echoerr "Dataset"
echoerr "  OSM file to load: $osmFile"
echoerr "  Dataset name: $datasetName"
echoerr "  Skip Nominatim: $noNominatim"
#echoerr "  Dataset Inception Timestamp $timestamp"
echoerr "-------------------------------------------------------------------"

#if [ -z "$osmFile" ]; then
if [ $osmFileSpecified -ne 0 ]; then
    echoerr "Error: No osm file specified for loading"
    echoerr ""
    echoerr "$usage"
    exit 1
fi

if [ $osmFileExists -ne 0 ]; then
    echoerr "Error: File not found: $osmFile"
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
read -p "Press [Enter] to start loading or [CTRL+C] to abort"


if [ $passLineExists -eq 0 ]; then
    echo "$passLine" >> ~/.pgpass
    chmod 600 ~/.pgpass
fi


createdb -h "$dbHost" -U "$dbUser" "$dbName" || true
createlang -h "$dbHost" -U "$dbUser" plpgsql "$dbName"
#psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/postgis.sql"
#psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f "$postgisPath/spatial_ref_sys.sql"

psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6.sql"
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -f"$osmosisSqlPath/pgsimple_schema_0.6_linestring.sql"


# Create a status table and add the dataset name
psql -h "$dbHost" -U "$dbUser" -d"$dbName" -c "CREATE TABLE IF NOT EXISTS \"status\"(\"k\" text, \"v\" text, UNIQUE(\"k\", \"v\"));"

statusKey="osmDatasetName"

# Insert an entry that the datset was loaded (if not present already)
statusVal=`psql -h "$dbHost" -U "$dbUser" -d"$dbName" -tc "SELECT \"v\" FROM \"status\" WHERE \"k\"='$statusKey' AND \"v\"='$datasetName'"`

# TODO Deal with inserts of datasets with same names
if [ -z "$statusVal" ]; then
  psql -h "$dbHost" -U "$dbUser" -d"$dbName"  -c "INSERT INTO \"status\"(\"k\", \"v\") VALUES('$statusKey', '$datasetName')"
fi


#wget http://download.geofabrik.de/openstreetmap/europe/germany/sachsen.osm.bz2

if [ ! -z "$osmFile" ]; then
#    bzcat "$osmFile" | osmosis --read-xml - --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
    osmosis "$readMode" "$osmFile" --write-pgsimp host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"
fi

#svn checkout https://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata --username RavenArkadon@gmail.com
#svn checkout http://linkedgeodata.googlecode.com/svn/trunk/ linkedgeodata

#git clone git://github.com/jnphilipp/LGDEditTool.git
#git clone git@github.com:GeoKnow/LinkedGeoData.git

lgdTmpDir="/tmp/linkedgeodata"

rm -rf "$lgdTmpDir"
mkdir -p "$lgdTmpDir"
#"$lgdPrepareInterlinksCmd" > "$lgdTmpDir/interlinks.sql"

# LGD Modifications
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Physical Schema.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3 Individual Views.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/ExtraOsmIndexes.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/Mappings.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/TranslateWikiLabels.sql"
#psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "/tmp/linkedgeodata/interlinks.sql"
psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/Interlinking.sql"


# TODO The old lgd setup bundled up a nomintim template and allowed this script to make use of it
# Should be restore this behavior or keep it separate?
# Perform Nominatim upgrade

#if ! [ "$noNominatim" = true ]; then

# Create a copy of the nominatim setup
#  nominatimSource="/usr/share/lib/linkedgeodata-nominatim-v2.5.1"

#  nominatimFolder=`mktemp -d -t lgd-nominatim-XXX`

#  echoerr "Creating copy of nominatim at $nominatimFolder"

#  cp -rf "$nominatimSource"/* "$nominatimFolder"


  #cd "$nominatimFolder"

  #Update settings
#  export POSTGRES_VERSION=9.5
#  export POSTGIS_VERSION=2.3
#  export DB_URL="pgsql://$dbUser:$dbPass@$dbHost:$dbPort/$dbName"

#  cat "$nominatimFolder/settings/local.php.dist" | envsubst > "$nominatimFolder/settings/local.php"

#  (cd "$nominatimFolder" && ./utils/setup-patched.php --osm-file "$osmFile" --import-data --setup-db --create-functions --create-tables --create-partition-tables --create-partition-functions --import-wikipedia-articles --load-data --calculate-postcodes --index --create-search-indices --threads 2)

#  psql -h "$dbHost" -U "$dbUser" -d "$dbName" -f "$lgdSqlPath/LinkedGeoData3-Nominatim.sql"

#fi

