#!/bin/bash

echoerr() { echo "$@" 1>&2; }

typ="$1"
entity="$2"
options="$3"
folder="$4"
path="$5"

[ -z "$typ" ] && echo "No class provided (e.g. Shop)"
[ -z "$entity" ] && echo "No entity type provided (node, way or relation)"
[ -z "$folder" ] && folder=`date +%F`
[ -z "$path" ] && path="../target/dump/"

targetDir="$path/$folder/"
mkdir -p "$targetDir"

#echoerr "Settings: $options | $folder | $path"

uri="http://linkedgeodata.org/ontology/$typ"
file="$folder-$typ.$entity.sorted.nt.bz2"

"./create-queries-${entity}s.sh" "$uri" | while read line; do
    echo "sparqlify-tool $options -Q '$line' | sort -u -S 1024M | rapper -i ntriples - http://example.org/ | bzip2 -c > '$targetDir/$file'"
done

