#!/bin/bash

function prependColumn {
    awk -F $'\t' "BEGIN {OFS = FS} { print \"$1\", \$0 }"
}

function addColumn {
    awk -F $'\t' "BEGIN {OFS = FS} { print \$0, \"$1\" }"
}

function getLocalName {
    awk -F $'\t' "BEGIN {OFS = FS} { match(\$$1, \"[^/]*/?$\"); a=substr(\$$1, RSTART, RLENGTH); print \$0, a }" | sed 's|/$||g'
# | sed 's % \\\\x g'
}

function loadArchive {
    url="$1"
    sourceName="$2"

    fileName=${url##*/}
    baseName=${fileName%%.*}

    tarFile="$baseName.tar"

    #echo "Filename: $fileName"
    #echo "$fileName $tarFile $baseName"

    if [ ! -d "$baseName" ]; then
        if [ ! -f "$tarFile" ]; then
            if [ ! -f "$fileName" ]; then
                wget "$url"
            fi

            bzip2 -d "$fileName"
         fi

         tar -xf "$tarFile"
    fi

    find "$baseName" | grep links.nt | xargs cat | sed -r 's|<([^>]*)>\s*<[^>]*>\s*<([^>]*)>.*|\1\t\2|g' | prependColumn "$sourceName" | getLocalName 3 | sort -u
}

basePath="/tmp/linkedgeodata/"
mkdir -p "$basePath"
cd "$basePath"

echo 'COPY lgd_interlinks (source, s, o, o_local_name) FROM stdin;'
loadArchive "http://downloads.linkedgeodata.org/releases/2011-04-06/LGD-Interlinks-110406-GeoNames.tar.bz2" "geonames"
loadArchive "http://downloads.linkedgeodata.org/releases/2011-04-06/LGD-Interlinks-110406-DBpedia.tar.bz2" "dbpedia"
echo '\.'


