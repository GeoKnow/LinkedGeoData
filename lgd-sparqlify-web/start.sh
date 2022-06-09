#!/bin/bash

export sparqlifyPath="/lgd/sparqlify/"
# export volumePath="$sparqlifyPath/conf/"
export volumePath="/share/sparqlify/"
# mkdir -p "$volumePath"

# If there are no sml files then refer to the default mapping
# TODO extend to R2RML

mappingsArr=(`find "$volumePath" -maxdepth 1 -type f -name "*.sml" -o -name '*.r2rml*' 2>/dev/null | sort`)
mappingsStr="${mappingsArr[@]}"

if [ -z "$mappingsStr" ]; then
   echo "Setting up default sparqlify/linkedgeodata mappings"
   mappingsStr="/usr/share/linkedgeodata/sml/lgd-core.sml"
fi

java -cp "@$sparqlifyPath/jib-classpath-file" "@$sparqlifyPath/jib-main-class-file" endpoint \
  -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -U "$DB_USER" -W "$DB_PASS" $SPARQLIFY_OPTS $mappingsStr

