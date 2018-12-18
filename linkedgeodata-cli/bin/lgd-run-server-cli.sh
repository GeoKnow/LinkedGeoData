#!/bin/bash

#
# Dump script for LinkedGeoData:
# ./install-lgd.sh data.osm.gz
#
#
#
#

usage="$(basename "$0") options -- program to dump a LinkedGeoData database

where:
    -h  postgres host name
    -d  postgres database name
    -U  postgres user name
    -W  postgres password"



#lgdBasePath="../"
sparqlifyJarFile="./sparqlify-parent/sparqlify-core/target/sparqlify-core-jar-with-dependencies.jar"

source config.ini.dist

# Use a config.ini file to override any of the settings of this file
[ -f "./config.ini" ] && source ./config.ini

# Simple function to echo to stderr
echoerr() { echo "$@" 1>&2; }

# Support for simple command line args
# Source: http://mywiki.wooledge.org/BashFAQ/035#getopts
# A POSIX variable
OPTIND=1         # Reset in case getopts has been used previously in the shell.

while getopts "?h:U:W:d:Q:" opt; do
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
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift


# Confirm settings before continuation
echoerr "-------------------------------------------------------------------"
echoerr "Your settings are:"
echoerr "Database"
echoerr "  Jdbc-Url: $dbJdbcUrl"
echoerr "  Username: $dbUser"
echoerr "  Password: $dbPass"

echoerr "Paths:"
echoerr "  Sparqlify path: $sparqlifyJarFile"

echoerr "-------------------------------------------------------------------"
#read -p "Press [Enter] key to start loading"


#sparqlify -h "$dbHost" -u "$dbUser" -p "$dbPass" -d "$dbName" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-gadm/gadm2.sml -n 1000 -t 180


#java -cp "$sparqlifyJarFile" org.aksw.sparqlify.web.Main -h "$dbHost" -u "$dbUser" -p "$dbPass" -d "$dbName" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-gadm/gadm2.sml -n 1000 -t 180


# Latest without GADM (argh!)
#sparqlify -j "$dbJdbcUrl" -U "$dbUser" -W "$dbPass" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-Licences.sml -n 1000 -t 180


#sparqlify -j "$dbJdbcUrl" -U "$dbUser" -W "$dbPass" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-Licences.sml -m ../linkedgeodata-ne/ne_10m_admin_0_countries.sml -m ../linkedgeodata-ne/ne_10m_admin_1_states_provinces.sml -m ../linkedgeodata-gadm/2.8/gadm2.8.sml -t 180 -P 7531 -n 1000000



sparqlify \
  -j "$dbJdbcUrl" \
  -U "$dbUser" \
  -W "$dbPass" \
  -m ../../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml \
  -m ../../linkedgeodata-parent/linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-Licences.sml \
  -m ../../linkedgeodata-ne/ne_10m_admin_0_countries.sml \
  -m ../../linkedgeodata-ne/ne_10m_admin_1_states_provinces.sml \
  -m ../../linkedgeodata-gadm/2.8/gadm2.8.sml \
  -t 180 \
  -P 7531 \
  -n 1000000


# Latest with gadm
#sparqlify -j "$dbJdbcUrl" -U "$dbUser" -W "$dbPass" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-Licences.sml -m ../linkedgeodata-gadm/gadm2.sml -m ../linkedgeodata-ne/ne_10m_admin_0_countries.sml -n 1000 -t 180

#sparqlify -j "$dbJdbcUrl" -U "$dbUser" -W "$dbPass" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -n 1000 -t 180


#java -cp "$sparqlifyJarFile" org.aksw.sparqlify.web.Main -j "$dbJdbcUrl" -U "$dbUser" -W "$dbPass" -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml -m ../linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-Licences.sml -m ../linkedgeodata-gadm/gadm2.sml -m ../linkedgeodata-ne/ne_10m_admin_0_countries.sml -n 1000 -t 180


#java -cp target/sparqlify-core-jar-with-dependencies.jar org.aksw.sparqlify.web.Main -h localhost -u postgres -p postgres -d lgd  -t 10 -c ./mappings/LinkedGeoData-Triplify-IndividualViews.sparqlify -Q 'Construct { ?s ?p ?o } { ?s ?p ?o . Filter(?p = <http://www.opengis.net/ont/geosparql#asWKT>) }'







