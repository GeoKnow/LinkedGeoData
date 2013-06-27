#!/bin/bash

function loadArchive {
    url="$1"

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

         tar -xvf "$tarFile"
    fi

    find "$baseName" | grep links.nt | xargs cat | sed -r 's|<([^>]*)>\s*<[^>]*>\s*<([^>]*)>.*|\1\t\2|g' | sort -u
}

basePath="/tmp/linkedgeodata/"
mkdir -p "$basePath"
cd "$basePath"

echo 'COPY lgd_interlinks (s, o) FROM stdin;'
loadArchive "http://downloads.linkedgeodata.org/releases/2011-04-06/LGD-Interlinks-110406-GeoNames.tar.bz2"
loadArchive "http://downloads.linkedgeodata.org/releases/2011-04-06/LGD-Interlinks-110406-DBpedia.tar.bz2"
echo '\.'


