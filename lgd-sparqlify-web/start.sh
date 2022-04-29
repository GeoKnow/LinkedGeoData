#!/bin/bash

export sparqlifyPath="/lgd/sparqlify/"
export volumePath="$sparqlifyPath/conf/"
mkdir -p "$volumePath"

# If there are no sml files then copy the default one over
# TODO extend to R2RML
if [ `find "$volumePath" -maxdepth 1 -type f -name "*.sml" 2>/dev/null | wc -l` -eq "0" ]; then
   echo "Setting up default sparqlify/linkedgeodata mappings"
   cp /usr/share/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml "$volumePath"
fi

java -cp "@$sparqlifyPath/jib-classpath-file" "@$sparqlifyPath/jib-main-class-file" endpoint \
  -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -U "$DB_USER" -W "$DB_PASS" $SPARQLIFY_OPTS "$volumePath"/*

