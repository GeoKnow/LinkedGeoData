#/bin/bash

dcatContextFolder="$1"

dcatDatasetContextFile="$dcatContextFolder/dcat.properties"

. "$dcatDatasetContextFile"


echo "
@prefix dct: <http://purl.org/dc/terms/> .
@prefix dcat: <http://www.w3.org/ns/dcat#> .

<$dcatDatasetIri>
  a dcat:Dataset ;
  dct:identifier \"$gav\" ;
  dct:title \"LinkedGeoData $datasetName $datasetDate\" ;
  dct:description \"LinkedGeoData RDF dump of $datasetName as of $datasetDate\" ;
  dcat:defaultGraphGroup <$graph> ;
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
  dct:title \"$title\" ;
  dct:description \"$description\" ;
  dcat:downloadURL <$filename> ;
  dcat:defaultGraph <$defaultGraph> ;
  .

"
done



