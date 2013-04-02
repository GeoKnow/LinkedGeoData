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
    -u  postgres user name
    -p  postgres password
    -Q  SPARQL query string"

queryString='Construct {?s ?p ?o } {?s ?p ?o } Limit 10'

source config.ini.dist


#lgdBasePath="../"
sparqlifyJarFile="./sparqlify-parent/sparqlify-core/target/sparqlify-core-jar-with-dependencies.jar"


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
        Q)  queryString="$OPTARG"
            ;;

    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift


# Confirm settings before continuation
echoerr "-------------------------------------------------------------------"
echoerr "Your settings are:"
echoerr "Database"
echoerr "  Name: $dbName"
echoerr "  Host: $dbHost"
echoerr "  Username: $dbUser"
echoerr "  Password: $dbPass"

echoerr "Paths:"
echoerr "  Sparqlify path: $sparqlifyJarFile"

echoerr "-------------------------------------------------------------------"
#read -p "Press [Enter] key to start loading"


java -cp "$sparqlifyJarFile" org.aksw.sparqlify.web.Main -h "$dbHost" -u "$dbUser" -p "$dbPass" -d "$dbName" -c ../linkedgeodata-core/src/main/sparqlify/LinkedGeoData-Triplify-IndividualViews.sparqlify -Q "$queryString"


#java -cp target/sparqlify-core-jar-with-dependencies.jar org.aksw.sparqlify.web.Main -h localhost -u postgres -p postgres -d lgd  -t 10 -c ./mappings/LinkedGeoData-Triplify-IndividualViews.sparqlify -Q 'Construct { ?s ?p ?o } { ?s ?p ?o . Filter(?p = <http://www.opengis.net/ont/geosparql#asWKT>) }'







