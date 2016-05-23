#!/bin/bash

#
# Note: This script relies on a config.ini(.dist) in <project-root>/bin
#

#service="$1"
typ="$1"

#if [ -z "$service" ]; then
#    echo "Please specify the service from which to dump, e.g. http://localhost:7531/sparql"
#    exit 1
#fi
echoerr() { echo "$@" 1>&2; }

if [ -z "$typ" ]; then
    echo "Please specify a type for which to dump the nodes, e.g. http://linkedgeodata.org/ontology/Amenity"
    exit 1
fi

#query="PREFIX geom: <http://geovocab.org/geometry#>
#PREFIX lgdo: <http://linkedgeodata.org/ontology/>
#PREFIX meta: <http://linkedgeodata.org/meta/>
#Construct {
#    ?s ?p ?o .
#    ?s geom:geometry ?g .
#    ?g ?x ?y .
#}
#{
#    ?s a meta:Node .
#    ?s a ?t .
#    ?s ?p ?o .
#    ?s geom:geometry ?g .
#    ?g ?x ?y .
#
#    Filter(?t = <$typ>)
#}"


query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
    ?s geom:geometry ?g .
    ?g ?x ?y .
}
{
    ?s a meta:Node .
    ?s a ?t .
    ?s ?p ?o .
    ?s geom:geometry ?g .
    ?g ?x ?y .

    Filter(?t = <$typ>)
}"


cd ../../bin/


query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
}
{
    ?s a meta:Way .
    ?s a ?t .
    ?s ?p ?o .

    Filter(?t = <$typ>)
}"

./run-query-lgd.sh -Q "$query"

query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
}
{
    ?x a meta:Way .
    ?x a ?t .
    ?x geom:geometry ?s .
    ?s ?p ?o .

    Filter(?t = <$typ>)
}"

./run-query-lgd.sh -Q "$query"


query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
    ?o ?a ?b .
}
{
    ?x a meta:Way .
    ?x a ?t .
    ?x geom:geometry ?y .
    ?y lgdo:posSeq ?s .
    ?s ?p ?o .
    ?o ?a ?b .

    Filter(?t = <$typ>)
}"

./run-query-lgd.sh -Q "$query"



#echoerr "Query:\n$query"

#sparql-nt "$service" "$query"
#cd ../../bin/
#./run-query-lgd.sh -Q "$query"

