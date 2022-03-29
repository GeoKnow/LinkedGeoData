Prefix dcterms: <http://purl.org/dc/terms/>
Prefix foaf: <http://xmlns.com/foaf/0.1/>
Prefix cc: <http://creativecommons.org/ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix lgd:<http://linkedgeodata.org/triplify/>
Prefix lgdrm:<http://linkedgeodata.org/triplify/meta/>

Create View node_licenses As
  Construct {
    ?s
        rdfs:isDefinedBy ?d .

    ?d
      a foaf:Document ;
      dcterms:licence <http://opendatacommons.org/licenses/odbl/1.0/> ;
      foaf:primaryTopic ?s .
// Note: Below is additional output from geonames, see e.g: rapper http://sws.geonames.org/2750405/
//      cc:attributionName "GeoNames"^^<http://www.w3.org/2001/XMLSchema#string> ;
//      cc:attributionURL <http://sws.geonames.org/2750405/> ;
//      dcterms:created "2006-01-15"^^<http://www.w3.org/2001/XMLSchema#date> ;
//      dcterms:modified "2013-12-01"^^<http://www.w3.org/2001/XMLSchema#date> ;
  }
  With
    ?s = uri(lgd:, 'node', ?id)
    ?d = uri(lgdrm:, 'node', ?id)
  From
    nodes


Create View way_licenses As
  Construct {
    ?s
        rdfs:isDefinedBy ?d .

    ?d
      a foaf:Document ;
      dcterms:licence <http://opendatacommons.org/licenses/odbl/1.0/> ;
      foaf:primaryTopic ?s .
  }
  With
    ?s = uri(lgd:, 'way', ?id)
    ?d = uri(lgdrm:, 'way', ?id)
  From
    ways


Create View relation_licenses As
  Construct {
    ?s
        rdfs:isDefinedBy ?d .

    ?d
      a foaf:Document ;
      dcterms:licence <http://opendatacommons.org/licenses/odbl/1.0/> ;
      foaf:primaryTopic ?s .
  }
  With
    ?s = uri(lgd:, 'relation', ?id)
    ?d = uri(lgdrm:, 'relation', ?id)
  From
    relations



