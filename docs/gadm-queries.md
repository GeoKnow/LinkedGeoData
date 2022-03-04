GADM Query examples

Find all GADM levels that have a geometric representation at a depth of 5
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix gadm-o: <http://linkedgeodata.org/ld/gadm2/ontology/>

Select ?s ?l ?g {
  ?s
    rdfs:label ?l ;
    gadm-o:level 5 ;
    gadm-o:representedBy [
      geom:geometry [
        ogc:asWKT ?g
      ]
    ]
}
Limit 10
Virtuoso | Sparqlify

Find all states in Germany, sorted by their names
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix gadm-o: <http://linkedgeodata.org/ld/gadm2/ontology/>
Prefix meta-o: <http://linkedgeodata.org/ld/meta/ontology/>

Select ?parent ?parentLbl ?child ?childLbl {

  ?parent
    a gadm-o:Level ;
    rdfs:label ?parentLbl .

  ?child
    rdfs:label ?childLbl ;
    meta-o:parentLevel ?parent .

  Filter(?parentLbl = "Germany")
}
Order By ?childLbl
Virtuoso | Sparqlify

Find all Open Street Map nodes that lie within the GADM level named “Altmarkkreis Salzwedel”
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>
Prefix meta: <http://linkedgeodata.org/meta/>
Prefix gadm-o: <http://linkedgeodata.org/ld/gadm2/ontology/>
Prefix gadm-r: <http://linkedgeodata.org/ld/gadm2/resource/>
Prefix meta-o: <http://linkedgeodata.org/ld/meta/ontology/>
Prefix bif: <http://www.openlinksw.com/schemas/bif#>

Select ?lvl ?item ?itemLbl ?itemGeo  {

  ?lvl
    a gadm-o:Level ;
    rdfs:label ?lvlLbl ;
    gadm-o:representedBy [
      geom:geometry [
        ogc:asWKT ?lvlGeo
      ]
    ] .

    Filter(?lvlLbl = "Altmarkkreis Salzwedel")

  ?item
    a meta:Node ;
    rdfs:label ?itemLbl ;
    geom:geometry [
      ogc:asWKT ?itemGeo
    ] .

  Filter(bif:st_intersects(?lvlGeo, ?itemGeo))
}
Virtuoso | Sparqlify Note: This query takes around 30 seconds.

PREFIX bif: <http://www.openlinksw.com/schemas/bif#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix lgdo:<http://linkedgeodata.org/ontology/>
Prefix geom: <http://geovocab.org/geometry#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Select ?b ?l ?geo {
  ?b a lgdo:TramStop .
  ?b rdfs:label ?l .
  ?b geom:geometry ?geom .
  ?geom ogc:asWKT ?geo .
  Filter(bif:st_intersects(?geo, bif:st_geomFromText('POLYGON((8 50, 12 50, 12 55, 8 55, 8 50))')))
}
Limit 100
Virtuoso | Sparqlify

  

