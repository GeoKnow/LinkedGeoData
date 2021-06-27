---
layout: default
parent: Examples
title: OpenStreetMap
nav_order: 1
---


# OSM Example Queries

Note: The predicate
bif:st_intersects
is used to efficiently find points in the vicinity of a given point. The first two arguments must be (point-)geometries whereas the third argument specifies the maximum distance between them in kilometers for which the predicate evaluates to true.


<details>
  <summary markdown="span">Retrieve all amenities 100 from Leipzig Central Station</summary>

```sparql
Prefix lgdo: <http://linkedgeodata.org/ontology/>
Prefix geom: <http://geovocab.org/geometry#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix owl: <http://www.w3.org/2002/07/owl#>

Select * {
  ?s
    owl:sameAs <http://dbpedia.org/resource/Leipzig_Hauptbahnhof> ;
    geom:geometry [
      ogc:asWKT ?sg
    ] .

  ?x
    a lgdo:Amenity ;
    rdfs:label ?l ;    
    geom:geometry [
      ogc:asWKT ?xg
    ] .


    Filter(bif:st_intersects (?sg, ?xg, 0.1)) .
} Limit 10
```

Click here to run the query
</details>

<details>
  <summary markdown="span">Retrieve all amenities 100m from Connewitz Kreuz</summary>

```sparql
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>

Select *
From <http://linkedgeodata.org> {
  ?s
    a lgdo:Amenity ;
    rdfs:label ?l ;    
    geom:geometry [
      ogc:asWKT ?g
    ] .

    Filter(bif:st_intersects (?g, bif:st_point (12.372966, 51.310228), 0.1)) .
}
```
Run the query on Virtuoso or Sparqlify
</details>

<details>
  <summary markdown="span">Get all icons associated with the schema</details>

```sparql
Prefix lgdo: <http://linkedgeodata.org/ontology/>

Select *
From <http://linkedgeodata.org> {
  ?s lgdo:schemaIcon ?o .
}
```
Click here to run the query
</details>

<details>
  <summary markdown="span">Bakeries in Leipzig</summary>

```sparql
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX ogc: <http://www.opengis.net/ont/geosparql#>
PREFIX geom: <http://geovocab.org/geometry#>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX bif: <http://www.openlinksw.com/schemas/bif#>

SELECT ?s ?sg WHERE {
  ?s
    a lgdo:Bakery ;
    geom:geometry [ ogc:asWKT ?sg ] .

  ?a
    owl:sameAs <http://dbpedia.org/resource/Leipzig> ;
    geom:geometry [ ogc:asWKT ?ag ] .

  Filter(bif:st_intersects(?sg, ?ag))
}
LIMIT 10
```

Click here to run the query
</details>

<details>
  <summary markdown="span">Get relations with postal codes and region polygon</summary>

```sparql
PREFIX meta: <http://linkedgeodata.org/meta/>
PREFIX lgdo: <http://linkedgeodata.org/ontology/>
PREFIX geom: <http://geovocab.org/geometry#>
PREFIX ogc: <http://www.opengis.net/ont/geosparql#>
SELECT * {
  ?s
    a meta:Relation ;
    lgdo:postalCode ?pc ;
    geom:geometry [
      ogc:asWKT ?w
    ]
 
}
LIMIT 10
```

Click here to run the query
</details>

<details>
  <summary markdown="span">Example with a polygon: Bakeries in (roughly) Germany</summary>

```sparql
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>

Select *
From <http://linkedgeodata.org> {
  ?s
    a lgdo:Bakery ;
    rdfs:label ?l ;    
    geom:geometry [
      ogc:asWKT ?g
    ] .

    Filter(bif:st_intersects (?g, bif:st_geomFromText("POLYGON((6.11553983198 54.438016608357, 6.95050076948 47.230985358357, 13.36651639448 47.626493170857, 14.99249295698 54.701688483357, 6.11553983198 54.438016608357))"))) .
} Limit 10
```

Click here to run the query
</details>

<details>
  <summary markdown="span">Find all schools within a 5km radius around a specific location, and for each school find coffeeshops that are closer than 1km.</summary>

```sparql
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
Prefix geom: <http://geovocab.org/geometry#>
Prefix lgdo: <http://linkedgeodata.org/ontology/>

Select ?school ?schoolLabel ?coffeeShop ?coffeeShopLabel
From <http://linkedgeodata.org> {
  ?school
    a lgdo:School ;
    rdfs:label ?schoolLabel ;
    geom:geometry [
      ogc:asWKT ?schoolGeo
    ] .
    
  ?coffeeShop
    a lgdo:CoffeeShop ;
    rdfs:label ?coffeeShopLabel ;
    geom:geometry [
      ogc:asWKT ?coffeeShopGeo
    ] .

  Filter (
    bif:st_intersects (?schoolGeo, bif:st_point (4.892222, 52.373056), 5) &&
    bif:st_intersects (?coffeeShopGeo, ?schoolGeo, 1)
  ) .
}
```
Click here to run the query
</details>


<details>
  <summary markdown="span">Find helipads near hospitals</summary>

```sparql
Prefix lgdo:<http://linkedgeodata.org/ontology/>
Prefix geom:<http://geovocab.org/geometry#>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>
SELECT * WHERE {
    ?p a lgdo:Helipad ; geom:geometry/ogc:asWKT ?pgv .
    ?h a lgdo:Hospital; geom:geometry/ogc:asWKT ?hgv . 

    Filter(bif:st_intersects(?pgv, ?hgv, 0.5))
}
LIMIT 10
```

Click to run the query
</details>

