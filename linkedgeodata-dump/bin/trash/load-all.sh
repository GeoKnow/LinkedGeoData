#!/bin/bash

baseDir="$1"

graph="http://linkedgeodata.org/osm/2013-04-29/"  #"$2"
port="1150"
pass="dba"
user="dba"



for file in `find $baseDir/*.nt.bz2`; do
    echo "Processing: $file"

    tmp=`mktemp`".nt"
    echo "Tempile: $tmp"
    bzcat "$file" | ./convert-virtuoso.sh | ./discard-corrupted-geometries.sh | awk 'length<2048' > "$tmp"



    ~/bin/virtload.sh "$tmp" "$graph" "$port" "$user" "$pass"

    rm "$tmp"
done

