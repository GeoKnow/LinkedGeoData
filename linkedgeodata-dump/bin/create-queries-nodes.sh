#!/bin/bash

typ="$1"

if [ -z "$typ" ]; then
    echo "Please specify a type for which to dump the nodes, e.g. http://linkedgeodata.org/ontology/Amenity"
    exit 1
fi

query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
}
{
    ?s a meta:Node .
    ?s a ?t .
    ?s ?p ?o .

    Filter(?t = <$typ>)
}"

echo `echo "$query" | tr '\n' ' '`


query="PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX meta: <http://linkedgeodata.org/meta/>
Construct {
    ?s ?p ?o .
}
{
    ?x a meta:Node .
    ?x a ?t .
    ?x geom:geometry ?s .
    ?s ?p ?o .

    Filter(?t = <$typ>)
}"

echo `echo "$query" | tr '\n' ' '`


