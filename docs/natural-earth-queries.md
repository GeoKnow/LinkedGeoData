Natural Earth Query examples

Find all Natural Earth Countries (geometries based on http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-0-countries/)

Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Select ?s ?l ?g {
  Graph <http://linkedgeodata.org/ne/> {
    ?s a <http://linkedgeodata.org/ne/ontology/Country> ;
    rdfs:label ?l ;
    geom:geometry [
      ogc:asWKT ?g
    ]
  }
}
Limit 10

Click here to run the query

Find all parking spaces within Germany:

Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>

Select ?item ?itemLabel ?itemGeo {

  Graph <http://linkedgeodata.org/osm/> {
    ?item
      a lgdo:ParkingSpace ;
      rdfs:label ?itemLabel ;
      geom:geometry [
        ogc:asWKT ?itemGeo
      ] ;
      .
  }

  Graph <http://linkedgeodata.org/ne/> {
    ?area a <http://linkedgeodata.org/ne/ontology/Country> ;
    rdfs:label "Germany" ;
    geom:geometry [
      ogc:asWKT ?areaGeo
    ]
  }

  Filter(bif:st_intersects(?itemGeo, ?areaGeo))
}
Limit 10

Click here to run the query
  
