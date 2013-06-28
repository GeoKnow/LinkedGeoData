#!/bin/bash

#
# Dump script for LinkedGeoData:
# ./install-lgd.sh data.osm.gz
#
#

usage="$(basename "$0") options -- program to dump a LinkedGeoData database

where:
    -h  postgres host name
    -d  postgres database name
    -U  postgres user name
    -W  postgres password
    -Q  SPARQL query string

If the query string is the last argument, -Q can be omitted.
"


#
# Hard coded profile paths, with folder precedence order: local > home > etc
#
configFiles[0]="/etc/linkedgeodata/lgd.conf.dist"
configFiles[1]="/etc/linkedgeodata/lgd.conf"
configFiles[2]="./lgd.conf.dist"
configFiles[3]="./lgd.conf"

for configFile in "${configFiles[@]}"; do
        [ -f "$configFile" ] && source "$configFile"

#       echo "Checking $configFile --- $sparqlifyCmd"
done


profileName="lgd-default"


# By default, the last argument becomes the query string
#     Source: http://stackoverflow.com/questions/1853946/getting-the-last-argument-passed-to-a-shell-script
for queryString; do true; done


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
        P)  profileName="$OPTARG"
            ;;
    esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift


for profilePath in "${lgdProfilePaths[@]}"; do
	profileFile="$profilePath/$profileName.conf"
	profileFileDist="$profileFile.dist"

#	echo "Checking $profileFile"
        [ -f "$profileFileDist" ] && source "$profileFileDist"
	[ -f "$profileFile" ] && source "$profileFile"
done



# TODO This does not work as expected - need to find a more clever way, possible solution: http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
#if [ ! -f "$sparqlifyFile" ]; then
#	echoerr "Sparqlify executable not found"
#	exit 1
#fi


# Check if the query argument actually matches the name of a query template

if [ -n "$queryString" ]; then
    [ ${lgdNamedQueries[$queryString]+isset} ] && queryString="${lgdNamedQueries[$queryString]}"
fi


lgdViewFile="$lgdSmlPath/$lgdSmlFile"

# Confirm settings before continuation
dbPassText=`echo "$dbPass" | cut -c1-2`

echoerr "-------------------------------------------------------------------"
echoerr "Your settings are:"
echoerr "Database"
echoerr "  Name: $dbName"
echoerr "  Host: $dbHost"
echoerr "  Username: $dbUser"
echoerr "  Password: $dbPassText..."
echoerr ""
echoerr "Paths:"
echoerr "  Sparqlify command: $sparqlifyCmd"
echoerr "  View definition: $lgdViewFile"
echoerr ""
echoerr "Query:"
echoerr "  $queryString"
echoerr "-------------------------------------------------------------------"
#read -p "Press [Enter] key to start loading"

if [ -z "$queryString" ]; then
    echoerr "Error: No query string specified"
    exit 1
fi

"$sparqlifyCmd" -h "$dbHost" -u "$dbUser" -p "$dbPass" -d "$dbName" -m "$lgdViewFile" -Q "$queryString"


