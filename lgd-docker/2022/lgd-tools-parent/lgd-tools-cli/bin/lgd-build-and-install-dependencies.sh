#!/bin/bash

sparqlifyPath="/tmp/sparqlify-parent"

echo "Building and Installing the Sparqlify Debian Package..."

git clone git://github.com/AKSW/Sparqlify.git "$sparqlifyPath"

cd "$sparqlifyPath"
git pull

#git checkout devel

make deb
debFile=`ls -1 sparqlify-debian/target/sparqlify*.deb`

sudo dpkg -i "$debFile"

