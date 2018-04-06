#/bin/bash

dcatDatasetContext="$1"
#node, way, relation
osmEntityType="$2"
lgdClass="$3"

. "$dcatDatasetContext"



lgdClassDash=`echo "$lgdClass" | sed -e 's/\([A-Z]\)/-\L\1/g' -e 's/^-//'`

basename="$artifactId-$version-$osmEntityType-$lgdClassDash"
filename="$basename.sorted.nt.bz2"


dcatDistributionIri="${dcatBaseIri}distribution/$artifactId-$version-$osmEntityType-$lgdClassDash"
#defaultGraph="$protocol$host/$artifactId/$version/$osmEntityType/$lgdClassDash/"
defaultGraph="$protocol$host/$basename/"


echo "# dcat distribution
osmEntityType=$osmEntityType
lgdClass=$lgdClass
lgdClassDash=$lgdClassDash
lgdClassIri=http://linkedgeodata.org/ontology/$lgdClass
dcatDistributionIri=$dcatDistributionIri
basename=$basename
filename=$filename
defaultGraph=$defaultGraph
"

