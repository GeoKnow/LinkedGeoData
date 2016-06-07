/**
 * Sparqlify configuration file for GADM
 *
 *
 * Common Abbreviations:
 *   ftr: feature
 *   geo: geometry
 *   lvl: level
 *   lbl: label
 * 
 *
 *
 *
 * TODO What about cases where lvl has an associated polygon???
 *
 */

Prefix sml:<http://aksw.org/sparqlify/>
Prefix ogc:<http://www.opengis.net/ont/geosparql#>

#Prefix dc:<http://purl.org/dc/elements/1.1/>
Prefix dcterms:<http://purl.org/dc/terms/>
Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix owl:<http://www.w3.org/2002/07/owl#>


Prefix lgd:<http://linkedgeodata.org/triplify/>
Prefix lgd-geom:<http://linkedgeodata.org/geometry/>
Prefix lgdo:<http://linkedgeodata.org/ontology/>
Prefix lgdm:<http://linkedgeodata.org/meta/>

//Prefix geo:<http://www.georss.org/georss/>

Prefix wgs: <http://www.w3.org/2003/01/geo/wgs84_pos#>


Prefix spatial:<http://geovocab.org/spatial#>
Prefix geom:<http://geovocab.org/geometry#>


//Prefix gadm-o: <http://gadm.geovocab.org/ontology#>
//Prefix gadm-r: <http://gadm.geovocab.org/id/>


Prefix gadm-o: <http://gadm.linkedgeodata.org/ontology/>
Prefix gadm-r: <http://gadm.linkedgeodata.org/resource/>
Prefix gadm-g: <http://gadm.linkedgeodata.org/geometry/>
Prefix gadm-l: <http://gadm.linkedgeodata.org/list/>

Prefix skos: <http://www.w3.org/2004/02/skos/core#>



/*
 * Features
 */

Create View gadm_features As
  Construct {
    ?ftr
      a spatial:Feature ;
      a gadm-o:AdministrativeRegion ;
      // TODO Add area and length
      .
  
    ?geo
       a geom:Geometry ;
       ogc:asWKT ?wkt .
  }
  With
      ?ftr = uri(gadm-r:, 'feature_', ?gid)
      ?geo = uri(gadm-r:, 'geometry_', ?gid)
      ?wkt = typedLiteral(?the_geom, ogc:wktLiteral)
  From
    lgd_gadm


Create View gadm_lvl_0_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  } 
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_0_data" b USING ("id_0")]]


Create View gadm_lvl_1_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'id_', ?gid)
    ?lvl = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_1_data" b USING ("id_0", "id_1")]]


Create View gadm_lvl_2_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'id_', ?gid)
    ?lvl = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1, '_', ?id_2)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_2_data" b USING ("id_0", "id_1", "id_2")]]


Create View gadm_lvl_3_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'id_', ?gid)
    ?lvl = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_3_data" b USING ("id_0", "id_1", "id_2", "id_3")]]


Create View gadm_lvl_4_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'id_', ?gid)
    ?lvl = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_4_data" b USING ("id_0", "id_1", "id_2", "id_3", "id_4")]]


Create View gadm_lvl_5_features As 
  Construct { 
    ?ftr gadm-o:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'id_', ?gid)
    ?lvl = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4, '_', ?id_5)
  From
    [[SELECT * FROM "lgd_gadm" a JOIN "lgd_gadm_lvl_5_data" b USING ("id_0", "id_1", "id_2", "id_3", "id_4", "id_5")]]



/*
 * Level 0
 */


Create View gadm_lvl_0_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      rdfs:label ?lbl;
      gadm-o:level 0 ;
      gadm-o:isoCode ?i ;
      .
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
    ?lbl = plainLiteral(?name_0)
    ?i = uri(gadm-r:, 'iso/', ?iso)
  From
    lgd_gadm_lvl_0_data


Create View gadm_lvl_0_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    lgd_gadm_lvl_0_only
  


/*
 * Level 1
 */

Create View gadm_lvl_1_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      gadm-o:parentLevel ?plvl ;      
      gadm-o:level 1 ;
      
      a ?t ;
      a ?et ;
      
	  rdfs:label ?lbl;
	  rdfs:comment ?cmt ;

      gadm-o:validFrom ?vfr ;
      gadm-o:validTo ?vto ;
      
      gadm-o:hasC ?hasc ;
      gadm-o:cc ?cc ;
      .
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)
    ?plvl = uri(gadm-r:, 'level_', ?id_0, '_')

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_1))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_1))
    
    ?lbl = plainLiteral(?name_1)
    ?cmt = plainLiteral(?remarks_1)
    ?vfr = plainLiteral(?validto_1)
    ?vto = plainLiteral(?validfr_1)
    
    ?hasc = plainLiteral(?hasc_1)
    ?cc = plainLiteral(?cc_1)
  From
    lgd_gadm_lvl_1_data


Create View gadm_lvl_1_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    lgd_gadm_lvl_1_only


Create View gadm_lvl_1_altlabels As
  Construct {
    ?lvl skos:altLabel ?lbl
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)
	?lbl = plainLiteral(?varname_1)
  From
    lgd_gadm_lvl_1_altlabels  


/*


Create View gadm_lvl_1 As
  Construct {
    ?s
      a spatial:Feature ;
      a gadm-o:AdministrativeRegion ;
      a ?t ;
      rdfs:label ?l;
      gadm-o:childOf ?p ;
      .

    ?m
      gadm-o:member ?s ;
      .

  }
  With
    ?p = uri(gadm-r:, 'lvl_', ?id_0)
    ?s = uri(gadm-r:, 'lvl_', ?id_0, '_', ?id_1)

    ?t = uri(gadm-o:, sml:urlEncode(?type_1))
    ?l = plainLiteral(?name_1)


    ?f = uri(gadm-r:, '_', ?g_id)


  From
    lgd_gadm_lvl_1





*/