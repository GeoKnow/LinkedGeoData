#!/bin/bash

service="$1"

if [ -z "$service" ]; then
    echo "Please specify the service from which to dump, e.g. http://localhost:7531/sparql"
    exit 1
fi



sed -r '/(^#)|($\s*^)/ d' | while read line; do

    typ="http://linkedgeodata.org/ontology/$line"
    file="$line.nodes.sorted.nt.bz2"

    ./dump-nodes.sh "$service" "$typ" | sort -u | bzip2 -c > "$file"

    echo "$line"
done

