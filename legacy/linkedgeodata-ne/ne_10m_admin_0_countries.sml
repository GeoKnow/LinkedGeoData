Prefix spy:<http://aksw.org/sparqlify/>
Prefix ogc:<http://www.opengis.net/ont/geosparql#>

Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix owl:<http://www.w3.org/2002/07/owl#>


//Prefix lgd:<http://linkedgeodata.org/triplify/>
Prefix lgdneo:<http://linkedgeodata.org/ne/ontology/>
Prefix lgdne:<http://linkedgeodata.org/ne/>

Prefix spatial:<http://geovocab.org/spatial#>
Prefix geom:<http://geovocab.org/geometry#>

Set defaultGraph = "http://linkedgeodata.org/ne/"



Create View ne_10m_admin_0_countries As
  Construct {
    ?s
      a lgdneo:Country ;
      rdfs:label ?l ;
      geom:geometry ?g ;
    .

    ?g
      a geom:Geometry ;
      ogc:asWKT ?w ;
    .
  }
  With
    ?s = uri(lgdne:, 'feature', ?gid)
    ?l = plainLiteral(?name)
    ?g = uri(lgdne:, 'geometry', ?gid )
    ?w = typedLiteral(?geom, ogc:wktLiteral)
  From 
    ne_10m_admin_0_countries

