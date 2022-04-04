#!/bin/bash

# A script which runs a couple of SPARQL queries to fetch the dataset name and dataset date
# in order to compute properties from which dcat descriptions are compiled

# Allow the use of alias within sub-shells
shopt -s expand_aliases

alias sparql="sparqlify-tool -P lgd-foo"


# Retrieve dataset name and last modified date from the endpoint

#datasetName="testDatasetName"
#datasetLastModified="2018-04-04T17:55:21"


datasetName=`sparql "CONSTRUCT WHERE { <http://linkedgeodata.org/meta/status> <http://linkedgeodata.org/meta/osmDatasetName> ?o } LIMIT 1" | awk -F '"' '{ print $2 }'`

datasetLastModified=`sparql "CONSTRUCT WHERE { ?s <http://purl.org/dc/terms/modified> ?o } ORDER BY DESC(?o) LIMIT 1" | awk -F '"' '{ print $2 }'`
datasetDate=`date -d"$datasetLastModified" '+%Y-%m-%d'`

#echo "Status: $datasetName - $datasetDate"


# Create maven-like coordinates
# NOTE For now we have no automatic support for different versions from the same source dataset (such as using different vocabularies/mappings)

groupId="org.linkedgeodata"
artifactId="osm-$datasetName"
version="$datasetDate"

gav="$groupId:$artifactId:$version"
ckanId=`echo "$gav" | sed 's|[.:]|-|g'`

#datasetLocalName="$artifactId-$version"

reverse() { reversed=();local i;for ((i=$#;i>0;i--)); do reversed+=("${!i}");done; }
function join_by { local IFS="$1"; shift; echo "$*"; }


parts=($(echo "$groupId" | tr '.' '\n'))
protocol="http://"

reverse "${parts[@]}"
#reverseParts=`reverse $parts`

#echo "${parts[*]} $reverseParts ---  ${reversed[*]}"


host=`join_by '.' "${reversed[@]}"`

dcatBaseIri="${protocol}dcat.$host/"

dcatDatasetIri="${dcatBaseIri}dataset/$artifactId-$version"
defaultGraphGroup="$protocol$host/$artifactId/$version/"

echo "#dcat context properties
datasetName='$datasetName'
datasetDate='$datasetDate'
dcatDatasetIri='$dcatDatasetIri'
defaultGraphGroup='$defaultGraphGroup'

protocol='$protocol'
groupId='$groupId'
artifactId='$artifactId'
version='$version'
host='$host'
gav='$gav'
ckanId='$ckanId'
dcatBaseIri='$dcatBaseIri'
dcatDatasetIri='$dcatDatasetIri'
defaultGraphGroup='$defaultGraphGroup'
"

#echo "
#
#@prefix dct: <http://purl.org/dc/terms/> .
#@prefix dcat: <http://www.w3.org/ns/dcat#> .
#
#<$dataset>
#  a dcat:Dataset ;
#  dct:identifier \"$gav\" ;
#  dct:title \"LinkedGeoData $datasetName $datasetDate\" ;
#  dct:description \"LinkedGeoData RDF dump of $datasetName as of $datasetDate\" ;
#  dcat:defaultGraphGroup <$graph> ;
#  .
#
#"


#echo "$dataset $timestamp"

