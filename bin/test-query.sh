#!/bin/bash

# A query for tram stops

./run-query-lgd.sh -Q '
Prefix ogc:<http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>
Select * {
  ?a a lgdo:TramRoute .
  ?a lgdo:members ?x .
  ?x ?y ?z .
  ?z lgdo:ref ?b .
  ?b a lgdo:TramStop .
  ?b rdfs:label ?l .
  ?b geom:geometry ?geom .
  ?geom ogc:asWKT ?geo .
}'

