Prefix geo:<http://www.opengis.net/ont/geosparql#>

Prefix dcterms:<http://purl.org/dc/terms/>
Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix owl:<http://www.w3.org/2002/07/owl#>

Set defaultGraph = "http://linkedgeodata.org/osm/"


Prefix lgd:<http://linkedgeodata.org/resource/>
Prefix lgdg:<http://linkedgeodata.org/geometry/>
Prefix lgdo:<http://linkedgeodata.org/ontology/>
Prefix lgdm:<http://linkedgeodata.org/meta/>

Create View placex_nodes As
  Construct {
    ?n
      a lgdm:Node ;
      geo:hasGeometry ?g ;
      .

    ?g
      a geo:Geometry  ;
      geo:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:node, ?osm_id)
    ?g = uri(lgdg:node, ?osm_id)
    ?o = typedLiteral(?geometry, geo:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'N']]

Create View placex_ways As
  Construct {
    ?n
      a lgdm:Way ;
      geo:hasGeometry ?g ;
      .

    ?g
      a geo:Geometry  ;
      geo:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:way, ?osm_id)
    ?g = uri(lgdg:way, ?osm_id)
    ?o = typedLiteral(?geometry, geo:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'W']]

Create View placex_relations As
  Construct {
    ?n
      a lgdm:Relation ;
      geo:hasGeometry ?g ;
      .

    ?g
      a geo:Geometry  ;
      geo:asWKT ?o ;
      .
  }
  With
    ?n = uri(lgd:relation, ?osm_id)
    ?g = uri(lgdg:relation, ?osm_id)
    ?o = typedLiteral(?geometry, geo:wktLiteral)
  From
    [[SELECT * FROM placex WHERE osm_type = 'R']]

