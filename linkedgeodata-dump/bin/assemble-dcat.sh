#/bin/bash

echoerr() { echo "$@" 1>&2; }

dcatContextFolder="$1"

dcatDatasetContextFile="$dcatContextFolder/dcat.properties"

if [ ! -f "$dcatDatasetContextFile" ]; then
  echoerr "First argument must be a folder containing a dcat.properties file - got: $dcatContextFolder="
  exit 1
fi

dcatDatasetContextFile="$dcatContextFolder/dcat.properties"

. "$dcatDatasetContextFile"


echo "
@prefix dct: <http://purl.org/dc/terms/> .
@prefix dcat: <http://www.w3.org/ns/dcat#> .

<$dcatDatasetIri>
  a dcat:Dataset ;
  dct:identifier \"$ckanId\" ;
  dct:title \"LinkedGeoData $datasetName $datasetDate\" ;
  dct:description \"LinkedGeoData RDF dump of $datasetName as of $datasetDate\" ;
  dcat:defaultGraphGroup <$defaultGraphGroup> ;
  .

"

# For each distribution context create the script that generates the dump files
for dist in "$dcatContextFolder"/*.dist.properties; do

. "$dist"

#  echo "Creating dump script for $dist"
  echo "
<$dcatDatasetIri> dcat:distribution <$dcatDistributionIri> .

<$dcatDistributionIri>
  a dcat:Distribution ;
  dct:title \"$basename\" ;
  dct:description \"$description\" ;
  dcat:downloadURL <$filename> ;
  dct:format \"RDF\" ;
  dcat:defaultGraph <$defaultGraph> ;
  .

"
done



