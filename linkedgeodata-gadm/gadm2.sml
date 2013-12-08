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

Prefix sml: <http://aksw.org/sparqlify/>

Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix owl: <http://www.w3.org/2002/07/owl#>

Prefix skos: <http://www.w3.org/2004/02/skos/core#>

Prefix ogc: <http://www.opengis.net/ont/geosparql#>

Prefix spatial: <http://geovocab.org/spatial#>
Prefix geom: <http://geovocab.org/geometry#>


// LinkedGeoData Meta Vocabulary (cross-dataset vocab)
Prefix lgd-mo: <http://linkedgeodata.org/meta/ontology/>

Prefix gadm-o: <http://linkedgeodata.org/gadm2/ontology/>
Prefix gadm-r: <http://linkedgeodata.org/gadm2/resource/>


// All patterns below should go to this graph.
Set defaultGraph = "http://linkedgeodata.org/gadm2/"

/*
 * Features
 */

Create View gadm_features As
  Construct {
    ?ftr
      a spatial:Feature ;
      a gadm-o:AdministrativeRegion ;
      // TODO Add area and length ;
      geom:geometry ?geo ;
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
    "lgd_gadm2_raw"


Create View gadm_lvl_0_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  } 
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_0_data" b USING ("id_0")]]


Create View gadm_lvl_1_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_1_data" b USING ("id_0", "id_1")]]


Create View gadm_lvl_2_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_2_data" b USING ("id_0", "id_1", "id_2")]]


Create View gadm_lvl_3_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_3_data" b USING ("id_0", "id_1", "id_2", "id_3")]]


Create View gadm_lvl_4_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_4_data" b USING ("id_0", "id_1", "id_2", "id_3", "id_4")]]


Create View gadm_lvl_5_features As 
  Construct { 
    ?ftr lgd-mo:inLevel ?lvl
  }
  With
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4, '_', ?id_5)
  From
    [[SELECT * FROM "lgd_gadm2_raw" a JOIN "lgd_gadm2_lvl_5_data" b USING ("id_0", "id_1", "id_2", "id_3", "id_4", "id_5")]]



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
    "lgd_gadm2_lvl_0_data"


Create View gadm_lvl_0_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_0_only"
  


/*
 * Level 1
 */

Create View gadm_lvl_1_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      lgd-mo:parentLevel ?plvl ;      
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
    ?plvl = uri(gadm-r:, 'level_', ?id_0)

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_1))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_1))
    
    ?lbl = plainLiteral(?name_1)
    ?cmt = plainLiteral(?remarks_1)
    ?vfr = plainLiteral(?validfr_1)
    ?vto = plainLiteral(?validto_1)
    
    ?hasc = plainLiteral(?hasc_1)
    ?cc = plainLiteral(?cc_1)
  From
    "lgd_gadm2_lvl_1_data"


Create View gadm_lvl_1_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_1_only"


Create View gadm_lvl_1_altlabels As
  Construct {
    ?lvl skos:altLabel ?lbl
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)
	?lbl = plainLiteral(?varname_1)
  From
    "lgd_gadm2_lvl_1_altlabels"  



/*
 * Level 2
 */

Create View gadm_lvl_2_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      lgd-mo:parentLevel ?plvl ;      
      gadm-o:level 2 ;
      
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
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2)
    ?plvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1)

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_2))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_2))
    
    ?lbl = plainLiteral(?name_2)
    ?cmt = plainLiteral(?remarks_2)
    ?vfr = plainLiteral(?validfr_2)
    ?vto = plainLiteral(?validto_2)
    
    ?hasc = plainLiteral(?hasc_2)
    ?cc = plainLiteral(?cc_2)
  From
    "lgd_gadm2_lvl_2_data"


Create View gadm_lvl_2_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_2_only"


Create View gadm_lvl_2_altlabels As
  Construct {
    ?lvl skos:altLabel ?lbl
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2)
	?lbl = plainLiteral(?varname_2)
  From
    "lgd_gadm2_lvl_2_altlabels"  


/*
 * Level 3
 */

Create View gadm_lvl_3_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      lgd-mo:parentLevel ?plvl ;      
      gadm-o:level 3 ;
      
      a ?t ;
      a ?et ;
      
	  rdfs:label ?lbl;
	  rdfs:comment ?cmt ;

      gadm-o:validFrom ?vfr ;
      gadm-o:validTo ?vto ;
      
      gadm-o:hasC ?hasc ;
      .
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)
    ?plvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2)

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_3))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_3))
    
    ?lbl = plainLiteral(?name_3)
    ?cmt = plainLiteral(?remarks_3)
    ?vfr = plainLiteral(?validfr_3)
    ?vto = plainLiteral(?validto_3)
    
    ?hasc = plainLiteral(?hasc_3)
  From
    "lgd_gadm2_lvl_3_data"


Create View gadm_lvl_3_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_3_only"


Create View gadm_lvl_3_altlabels As
  Construct {
    ?lvl skos:altLabel ?lbl
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)
	?lbl = plainLiteral(?varname_3)
  From
    "lgd_gadm2_lvl_3_altlabels"  




/*
 * Level 4
 */

Create View gadm_lvl_4_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      lgd-mo:parentLevel ?plvl ;      
      gadm-o:level 4 ;
      
      a ?t ;
      a ?et ;
      
	  rdfs:label ?lbl;
	  rdfs:comment ?cmt ;

      gadm-o:validFrom ?vfr ;
      gadm-o:validTo ?vto ;
      .
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)
    ?plvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3)

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_4))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_4))
    
    ?lbl = plainLiteral(?name_4)
    ?cmt = plainLiteral(?remarks_4)
    ?vfr = plainLiteral(?validfr_4)
    ?vto = plainLiteral(?validto_4)
  From
    "lgd_gadm2_lvl_4_data"


Create View gadm_lvl_4_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_4_only"


Create View gadm_lvl_4_altlabels As
  Construct {
    ?lvl skos:altLabel ?lbl
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)
	?lbl = plainLiteral(?varname_4)
  From
    "lgd_gadm2_lvl_4_altlabels"  



/*
 * Level 5
 */

Create View gadm_lvl_5_data As
  Construct {
    ?lvl
      a gadm-o:Level ;
      lgd-mo:parentLevel ?plvl ;
      gadm-o:level 5 ;
      
      a ?t ;
      a ?et ;
      
	  rdfs:label ?lbl ;
      .
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4, '_', ?id_5)
    ?plvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4)

    ?t = uri(gadm-o:, 'type/', sml:urlEncode(?type_5))
    ?et = uri(gadm-o:, 'engType/', sml:urlEncode(?engtype_5))
    
    ?lbl = plainLiteral(?name_5)
    ?cmt = plainLiteral(?remarks_5)
    ?vfr = plainLiteral(?validfr_5)
    ?vto = plainLiteral(?validto_5)
  From
    "lgd_gadm2_lvl_5_data"


Create View gadm_lvl_5_only As
  Construct {
    ?lvl gadm-o:representedBy ?ftr
  }
  With
    ?lvl = uri(gadm-r:, 'level_', ?id_0, '_', ?id_1, '_', ?id_2, '_', ?id_3, '_', ?id_4, '_', ?id_5)
    ?ftr = uri(gadm-r:, 'feature_', ?gid)
  From
    "lgd_gadm2_lvl_5_only"








