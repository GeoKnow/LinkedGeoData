#!/bin/bash

echoerr() { echo "$@" 1>&2; }

lgdClasses="$1"

if [ ! -f "$lgdClasses" ]; then
  echoerr "Error: First argument must a file containing class URI which to dump"
  exit 1
fi


# Fetch dcat information ...
dcatDatasetContext=`./create-dcat-dataset-context.sh`

# ... and make it available to the shell
eval "$dcatDatasetContext"

# Create the dump folder

gav="$groupId-$artifactId-$version"

targetFolder="target/$gav"

mkdir -p "$targetFolder"

# Write the context information to the target folder
dcatDatasetContextFile="$targetFolder/dcat.properties"

echo "$dcatDatasetContext" > "$dcatDatasetContextFile"

# Create distribution contexts

osmTypes=( "nodes" "ways" )

while read lgdClass; do

  for osmType in "${osmTypes[@]}"; do
    dcatDistributionContext=`./create-dcat-distribution-context.sh "$dcatDatasetContextFile" "$osmType" "$lgdClass"`

    eval "$dcatDistributionContext"

    dcatDistributionContextFile="$targetFolder/$basename.dist.properties"
    echo "$dcatDistributionContext" > "$dcatDistributionContextFile"
  done

done <"$lgdClasses"


# Assemble the DCAT descriptions
dcatFile="$targetFolder/dcat.ttl"

./assemble-dcat.sh "$targetFolder" > "$dcatFile"


options="-P lgd-foo"

# For each distribution context create the script that generates the dump files
for dist in "$targetFolder"/*.dist.properties; do

  echo "Creating dump script for $dist"


  . "$dist"

  dumpScriptFile="$targetFolder/$basename.dump.sh"

  "./create-queries-${osmEntityType}.sh" "$lgdClassIri" | while read line; do
  #    echo "sparqlify-tool $options -Q '$line' | sort -u -S 1024M | rapper -i ntriples - http://example.org/ | pbzip2 -c > '$targetDir/$file'"
    echo "sparqlify-tool $options -Q '$line' | sort -u -S 4096M | rapper -i ntriples - http://example.org/ | pbzip2 -c > $filename" > "$dumpScriptFile"
  done

done


# Finally create a run-all script
dumpScriptFile="$targetFolder/run-dump.sh"

echo "" > "$dumpScriptFile"

for f in "$targetFolder"/*.dump.sh; do
  g=`basename "$f"`
  echo "./$g || break" >> "$dumpScriptFile"
done

chmod +x "$targetFolder"/*.sh


