#!/bin/bash
#
# This script fetches and installs the latest sparqlify and linkedgeodata debian packages
#

if [[ "$USER" != "root" ]]; then
        echo "Must be run as root"
        exit 1
fi


tmp=`mktemp -d`
echo "Working in directory: $tmp"

cd "$tmp"

wget --no-directories --accept="sparqlify*.deb" -r -l 1 "http://cstadler.aksw.org/repos/apt/pool/main/s/sparqlify/"
#wget --no-directories --accept='linkedgeodata*.deb$' -r -l 1 http://cstadler.aksw.org/repos/apt/pool/main/l/linkedgeodata/

declare -A patterns
patterns[0]="sparqlify*.deb"
#patterns[1]="linkedgeodata*.deb"


for pattern in "${patterns[@]}"; do
    file=`ls $pattern`
    dpkg -i "$file"
done

