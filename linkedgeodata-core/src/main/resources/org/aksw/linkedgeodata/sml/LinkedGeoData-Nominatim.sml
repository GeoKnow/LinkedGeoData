Prefix spy:<http://aksw.org/sparqlify/>
Prefix ogc:<http://www.opengis.net/ont/geosparql#>

#Prefix dc:<http://purl.org/dc/elements/1.1/>
Prefix dcterms:<http://purl.org/dc/terms/>
Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix owl:<http://www.w3.org/2002/07/owl#>

Set defaultGraph = "http://linkedgeodata.org/osm/"


Prefix lgd:<http://linkedgeodata.org/triplify/>
Prefix lgd-geom:<http://linkedgeodata.org/geometry/>
Prefix lgdo:<http://linkedgeodata.org/ontology/>
Prefix lgdm:<http://linkedgeodata.org/meta/>

Prefix geom:<http://geovocab.org/geometry#>

Create View placex_nodes As
  Construct {
    ?n
      a lgdm:Node ;
      geom:geometry ?g ;
      .

    ?g
      a geom:Geometry  ;
      ogc:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:node, ?osm_id)
    ?g = uri(lgd-geom:node, ?osm_id)
    ?o = typedLiteral(?geometry, ogc:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'N']]

Create View placex_ways As
  Construct {
    ?n
      a lgdm:Way ;
      geom:geometry ?g ;
      .

    ?g
      a geom:Geometry  ;
      ogc:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:way, ?osm_id)
    ?g = uri(lgd-geom:way, ?osm_id)
    ?o = typedLiteral(?geometry, ogc:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'W']]

Create View placex_relations As
  Construct {
    ?n
      a lgdm:Relation ;
      geom:geometry ?g ;
      .

    ?g
      a geom:Geometry  ;
      ogc:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:relation, ?osm_id)
    ?g = uri(lgd-geom:relation, ?osm_id)
    ?o = typedLiteral(?geometry, ogc:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'R']]

