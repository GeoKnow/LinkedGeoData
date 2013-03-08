#!/bin/bash

sparqlifyPath="./sparqlify-parent"
git clone git://github.com/AKSW/Sparqlify.git "$sparqlifyPath"

cd "$sparqlifyPath"
git checkout devel

cd sparqlify-core
mvn -U clean assembly:assembly


