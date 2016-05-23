#!/bin/bash

configFileName="$1"

#osmosis={osmosis:-osmosis}
osmosis="osmosis"
targetPath="sync"
sleepInterval="60"

m_info()
{
	echo "[`date +"%Y-%m-%d %H:%M:%S"`] $$ $1"
}

m_error()
{
	echo "[`date +"%Y-%m-%d %H:%M:%S"`] $$ [error] $1"
	exit 1
}

m_ok()
{
	echo "[`date +"%Y-%m-%d %H:%M:%S"`] $$ $1"
}


echo "Starting LinkedGeoData live update (based on osmosis)..."


if [ ! -f $configFileName ]; then
	m_info "No config found, attempting to copy '$configFileName.dist' to '$configFileName'"
	cp "$configFileName.dist" $configFileName
fi

if ! source $configFileName; then
	m_error "Could not load config file: '$configFileName'"
fi

mkdir -p "$targetPath"


# Check if we need to initialize the working directory
if [ ! -f "$targetPath/configuration.txt" ]
then
	"$osmosis" --read-replication-interval-init workingDirectory="$targetPath"

	if [ "$?" -eq "0" ]; then	
		m_info "Osmosis target directory has been initialized. Please check configuration in $targetPath, then run this script again"
	else
		m_error "Osmosis exited with error code ($?)"
	fi
	exit 0
fi


function applyChanges {
    h="$dbHost"
    if [ ! -z "$dbPort" ]; then
        h="$dbHost:$dbPort"
    fi

    if [ -f "$targetPath/diff.osc" ]; then
        "$osmosis" --read-xml-change file="$targetPath/diff.osc" --write-pgsimp-change host="$dbHost" database="$dbName" user="$dbUser" password="$dbPass"

        # TODO Decide whether the old diffs should be kept or removed
        # Remove possibly existing diff.osc file
        rm "$targetPath/diff.osc"
    fi
}

# Apply changes that might not have been applied yet
applyChanges

while [ 1 ]
do
	"$osmosis" --read-replication-interval workingDirectory=$targetPath --simplify-change --write-xml-change "$targetPath/diff.osc"
    applyChanges
	echo "Going to sleep for $sleepInterval seconds..."
    sleep "$sleepInterval"
done


