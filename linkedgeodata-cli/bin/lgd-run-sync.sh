#!/bin/bash

configFileName="$1"

#osmosis={osmosis:-osmosis}
osmosis="osmosis"
targetPath=${targetPath:-"sync"}
OSM_DATA_SYNC_RECHECK_INTERVAL=${OSM_DATA_SYNC_RECHECK_INTERVAL:-60}

log() { echo "[`date +'%Y-%m-%d %H:%M:%S'`] $$ [$1] $2" ; }

echo "Starting LinkedGeoData live update (based on osmosis)..."


if [ ! -z "$configFileName" ]; then
    if [ ! -f "$configFileName" ]; then
        log "info" "No config found, attempting to copy '$configFileName.dist' to '$configFileName'"
        cp "$configFileName.dist" "$configFileName"
    fi

    if ! source "$configFileName"; then
        log "error" "Could not load config file: '$configFileName'"
        exit 1
    fi
fi

mkdir -p "$targetPath"


# Check if we need to initialize the working directory
if [ ! -f "$targetPath/configuration.txt" ]; then
    "$osmosis" --read-replication-interval-init workingDirectory="$targetPath"

    if [ "$?" -eq "0" ]; then	
        log "info" "Osmosis target directory has been initialized. Please check configuration in $targetPath, then run this script again"
    else
        log "error" "Osmosis exited with error code ($?)"
        exit 1
    fi
    exit 0
fi


applyChanges() {
    h="$DB_HOST"
    if [ ! -z "$DB_PORT" ]; then
        h="$DB_HOST:$DB_PORT"
    fi

    if [ -f "$targetPath/diff.osc" ]; then
        "$osmosis" --read-xml-change file="$targetPath/diff.osc" --write-pgsimp-change host="$h" database="$DB_NAME" user="$DB_USER" password="$DB_PASS"

        # TODO Decide whether the old diffs should be kept or removed
        # Remove possibly existing diff.osc file
        rm "$targetPath/diff.osc"
    fi
}

# Apply changes that might not have been applied yet
applyChanges

while [ 1 ]; do
    "$osmosis" --read-replication-interval workingDirectory=$targetPath --simplify-change --write-xml-change "$targetPath/diff.osc"
    applyChanges
    # TODO Enhance script to compute time duration to next recheck interval based on timestamp in latest state.txt file
    echo "Going to sleep for $OSM_DATA_SYNC_RECHECK_INTERVAL seconds..."
    sleep "$OSM_DATA_SYNC_RECHECK_INTERVAL"
done


