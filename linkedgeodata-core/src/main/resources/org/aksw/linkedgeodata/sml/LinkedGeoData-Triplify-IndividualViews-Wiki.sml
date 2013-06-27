
// Sparqlify really needs a feature for using multiple mapping files
// This file adds wikipedia resources
// Its a separate file because it relies on views that rely on the URL extension,
// which is not shipped as a package and needs to be compiled
// So it will not work out of the box


/**
 * Sparqlify configuration file for LinkedGeoData
 *
 * Triplify flavour
 *
 */

// Prefixes (these will also be used in the query responses)
Prefix spy:<http://aksw.org/sparqlify/>
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

//Prefix virtrdf:<http://www.openlinksw.com/schemas/virtrdf#>


Create View nodes_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:node, ?node_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT node_id, k, v FROM lgd_node_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]
  
Create View ways_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:way, ?way_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT way_id, k, v FROM lgd_way_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]

Create View relations_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:relation, ?relation_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT relation_id, k, v FROM lgd_relation_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]
  
    
    
    
    


/**********
 * Users
 **********/
Create View users As
  Construct {
    ?s
      a dcterms:Agent ;
      rdfs:label ?l .
  }
  With
    ?s = uri(lgd:user, ?id)
    ?l = plainLiteral(?name)
  From
    users

/**********
 * Interlinks
 **********/
 
Create View interlinks As
  Construct {
    ?s owl:sameAs ?o
  }
  With
    ?s = uri(?s)
    ?o = uri(?o)
  Constrain
    ?s prefix "http://linkedgeodata.org"
    ?o prefix "http://dbpedia.org" "http://sws.geonames.org"
  From
    lgd_interlinks
 

/**********
 * Ontology
 **********/


Create View classes_k As
    Construct {
        ?s a owl:Class .
        ?s lgdm:sourceKey ?k .
    }
    With
        ?s = uri(?object)
        ?k = plainLiteral(?k)
    Constrain
        ?s prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT object, k FROM lgd_map_resource_k WHERE property = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type']];

Create View sub_classes As
    Construct {
        ?child rdfs:subClassOf ?parent .
    }
    With
        ?child  = uri(?child) 
        ?parent = uri(?parent) 
    Constrain
        ?child  prefix "http://linkedgeodata.org/ontology/"
        ?parent prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT a.object AS parent, b.object AS child FROM lgd_map_resource_k a JOIN lgd_map_resource_kv b ON (b.k = a.k) WHERE a.property = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' AND b.property = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type' AND a.object != b.object]];


Create View classes_kv As
    Construct {
        ?s a owl:Class .
        ?s lgdm:sourceTag ?t .
        ?t lgdm:key ?k .
        ?t lgdm:value ?v .
    }
    With
        ?s = uri(?object)
        ?t = uri(concat(?object, "/key/", ?k, "/value/", ?v))
        ?k = plainLiteral(?k)
        ?v = plainLiteral(?v)
    Constrain
        ?s prefix "http://linkedgeodata.org/ontology/"
        ?t prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT object, k, v FROM lgd_map_resource_kv WHERE property = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type']];



// Resource labels
Create View view_resource_labels As
	Construct {
		?s rdfs:label ?o .
	}
	With
		?s = uri(?resource)
		?o = plainLiteral(?label, ?language)
	Constrain
		?s prefix "http://linkedgeodata.org/ontology/"
	From
		lgd_resource_label;



/*************
 * Nodes
 *************/


// Node geometries
Create View lgd_nodes As
	Construct {
	    ?n a lgdm:Node .
	    ?n a spatial:Feature .
	    ?n lgdo:version ?v .
	    ?n dcterms:contributor ?u .
		?n dcterms:modified ?d .
		?n lgdo:changeset ?c .
		?n geom:geometry ?g .
		
		?g a geom:Geometry .
		?g ogc:asWKT ?o .
		
		?n wgs:long ?xx .
		?n wgs:lat ?yy .
		
		?n owl:sameAs ?gadm .
	}
	With
		?n = uri(concat(lgd:node, ?id))
		?v = typedLiteral(?version, xsd:int)
		?u = uri(concat(lgd:user, ?user_id))
		?d = typedLiteral(?tstamp, xsd:dateTime)
		?c = typedLiteral(?changeset_id, xsd:int)
		?g = uri(concat(lgd-geom:node, ?id))
		?o = typedLiteral(?geom, ogc:wktLiteral)
		//?g = typedLiteral(?geom, virtrdf:geometry)
		?xx = typedLiteral(?x, xsd:double)
		?yy = typedLiteral(?y, xsd:double)
		
		?gadm = uri(concat("http://gadm.geovocab.org/services/withinRegion?lat=", ?y_text , "&long=", ?x_text, "#point"))
		
	From
		[[SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes]];


/*
Create view lgd_sameAs_gadm As
    Construct {		
		?n owl:sameAs ?gadm .
    }
    With
    	?n = uri(concat(lgd:node, ?id))
		?gadm = uri(concat("http://gadm.geovocab.org/services/withinRegion?lat=", ?y , "&long=", ?x, "#point"))
	From
		[[SELECT id, ST_X(geom::geometry)::float4::text x, ST_Y(geom::geometry)::float4::text y FROM nodes]];


Create View lgd_node_geometries As
    Construct {
        ?n a geom:Geometry .
        ?n ogc:asWKT ?o .
    }
    With
        ?n = uri(concat(lgd-geom:node, ?id)) 
        ?o = typedLiteral(?geom, ogc:wktLiteral)
    From
        nodes;
*/

Create View lgd_node_tags_resource_k As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id)) 
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"
		?o prefix "http://linkedgeodata.org/ontology/"
	From
		lgd_node_tags_resource_k


Create View lgd_node_tags_resource_kv As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"	
		?o prefix "http://linkedgeodata.org/ontology/"	
	From
		lgd_node_tags_resource_kv

Create View lgd_node_tags_boolean As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:boolean)
	From
		lgd_node_tags_boolean

Create View lgd_node_tags_int As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		//?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:int)
	From
		lgd_node_tags_int

Create View lgd_node_tags_float As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:float)
	From
		lgd_node_tags_float


Create View lgd_node_tags_text As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id)) 
		?p = uri(?property)
		?o = plainLiteral(?v, ?language)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
	From
		lgd_node_tags_text

Create View lgd_node_tags_string As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?o = plainLiteral(?v)
	From
		lgd_node_tags_string



/*************
 * Ways
 *************/
 
Create View lgd_ways As
	Construct {
	    ?w a lgdm:Way .
	    ?w a spatial:Feature .
	    ?w lgdo:version ?v .
	    ?w dcterms:contributor ?u .
		?w dcterms:modified ?d .
		?w lgdo:changeset ?c .
		?w geom:geometry ?g .
	}
	With
		?w = uri(concat(lgd:way, ?id))
		?v = typedLiteral(?version, xsd:int)
		?u = uri(concat(lgdo:user, ?user_id))
		?d = typedLiteral(?tstamp, xsd:dateTime)
		?c = typedLiteral(?changeset_id, xsd:int)
		//?g = typedLiteral(?geom, virtrdf:geometry)
		?g = uri(concat(lgd-geom:way, ?id))
	From
		ways; 

Create View lgd_ways_linestrings As
    Construct {
        ?w a geom:Geometry . 
        ?w ogc:asWKT ?g .
    }
    With
		//?w = uri(concat(lgd:way, ?id))
		?w = uri(concat(lgd-geom:way, ?id))
		?g = typedLiteral(?linestring, ogc:wktLiteral)
	From
		[[SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)]];
    

Create View ways_polygons As
	Construct {
	    ?w a geom:Geometry .
		?w ogc:asWKT ?g .
	}
	With
		//?w = uri(concat(lgd:way, ?way_id))
		?w = uri(concat(lgd-geom:way, ?way_id))
		?g = typedLiteral(?polygon, ogc:wktLiteral)
	From
		simple_polys;
	


/*
Create View view_way_to_nodes As
	Construct {
		?w lgdo:hasNodes ?wn .
	}
	With 
		?w = uri(concat(lgd:way, ?id))
		?wn = uri(concat(lgd:waynode, ?id))  
	From
		ways;
*/


Create View lgd_pos_seq As
	Construct {
		?w lgdo:posSeq ?wn .
	}
	With 
		?w = uri(concat(lgd-geom:way, ?id))
		?wn = uri(concat(lgd-geom:posSeq, ?id))  
	From
		ways;

Create View lgd_pos_seq_type As
	Construct {
	    ?wn a rdf:Seq . 
	}
	With
		?wn = uri(concat(lgd-geom:posSeq, ?id))
	From
		ways;

  
Create View view_waynodes As
	Construct {
		?wn ?p ?n .
	}
	With
		?wn = uri(concat(lgd-geom:posSeq, ?way_id))
		?p = uri(concat(rdf:_, ?sequence_id))
		?n = uri(concat(lgd-geom:node, ?node_id))  
	From
		way_nodes;


Create View lgd_way_tags_resource_k As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id)) 
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"
		?o prefix "http://linkedgeodata.org/ontology/"
	From
		lgd_way_tags_resource_k

Create View lgd_way_tags_resource_kv As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id))
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"	
		?o prefix "http://linkedgeodata.org/ontology/"	
	From
		lgd_way_tags_resource_kv

Create View lgd_way_tags_boolean As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:boolean)
	From
		lgd_way_tags_boolean

Create View lgd_way_tags_int As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id))
		//?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:int)
	From
		lgd_way_tags_int

Create View lgd_way_tags_float As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:float)
	From
		lgd_way_tags_float

Create View lgd_way_tags_text As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id)) 
		?p = uri(?property)
		?o = plainLiteral(?v, ?language)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
	From
		lgd_way_tags_text

Create View lgd_way_tags_string As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:way, ?way_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?o = plainLiteral(?v)
	From
		lgd_way_tags_string



/*********
 * RELATIONS
 *********/ 

Create View lgd_relations As
	Construct {
	    ?s a lgdm:Relation .
	    ?s a spatial:Feature .
	    ?s lgdo:version ?v .
	    ?s dcterms:contributor ?u .
		?s dcterms:modified ?d .
		?s lgdo:changeset ?c .
		//?w geom:geometry ?g .
		
		?s lgdo:members ?m .
		?m a rdf:Seq .
		
	}
	With
		?s = uri(concat(lgd:relation, ?id))
		?v = typedLiteral(?version, xsd:int)
		?u = uri(concat(lgdo:user, ?user_id))
		?d = typedLiteral(?tstamp, xsd:dateTime)
		?c = typedLiteral(?changeset_id, xsd:int)
		//?g = uri(concat(lgd-geom:relation, ?id))
		
		?m = uri(lgd:rmembers, ?id)  
		
	From
		relations
		//[[SELECT id, version, user_id, tstamp, changeset_id FROM relations]]; 


Create View lgd_relation_members_all As
  Construct {
		?m ?p ?i .      
		?i lgdo:role ?r .
  }
  With
		?m = uri(lgd:rmembers, ?relation_id)  
		?p = uri(rdf:_, ?sequence_id)
		?i = uri(lgd:rmember, ?relation_id, "_", ?sequence_id)
		?r = plainLiteral(?member_role)  
  From
    relation_members

  
Create View lgd_relation_members_seq_nodes As
	Construct {
		?i lgdo:ref ?n
	}
	With
		?i = uri(lgd:rmember, ?relation_id, "_", ?sequence_id)
		?n = uri(lgd:node, ?member_id)
	From
		[[SELECT * FROM relation_members WHERE member_type = 'N']];

Create View lgd_relation_members_seq_ways As
	Construct {
		?i lgdo:ref ?w
	}
	With
		?i = uri(lgd:rmember, ?relation_id, "_", ?sequence_id)
		?w = uri(lgd:way, ?member_id)
	From
		[[SELECT * FROM relation_members WHERE member_type = 'W']];


Create View lgd_relation_members_seq_relations As
	Construct {
		?i lgdo:ref ?r
	}
	With
		?i = uri(lgd:rmember, ?relation_id, "_", ?sequence_id)
		?r = uri(lgd:relation, ?member_id)
	From
		[[SELECT * FROM relation_members WHERE member_type = 'R']];


/*
Create View relation_members_nodes As
	Construct {
		?s lgdo:hasMember ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id)) 
		?o = uri(concat(lgd:node, ?member_id))
	From
		[[SELECT relation_id, member_id FROM relation_members WHERE member_type = 'N']];
*/





Create View lgd_relation_tags_resource_k As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id)) 
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"
		?o prefix "http://linkedgeodata.org/ontology/"
	From
		lgd_relation_tags_resource_k

Create View lgd_relation_tags_resource_kv As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id))
		?p = uri(?property)
		?o = uri(?object)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"	
		?o prefix "http://linkedgeodata.org/ontology/"	
	From
		lgd_relation_tags_resource_kv

Create View lgd_relation_tags_boolean As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:boolean)
	From
		lgd_relation_tags_boolean

Create View lgd_relation_tags_int As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id))
		//?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:int)
	From
		lgd_relation_tags_int

Create View lgd_relation_tags_float As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', ?k))
		?o = typedLiteral(?v, xsd:float)
	From
		lgd_relation_tags_float

Create View lgd_relation_tags_text As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id)) 
		?p = uri(?property)
		?o = plainLiteral(?v, ?language)
	Constrain
		?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
	From
		lgd_relation_tags_text

Create View lgd_relation_tags_string As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:relation, ?relation_id))
		?p = uri(concat('http://linkedgeodata.org/ontology/', spy:urlEncode(?k)))
		?o = plainLiteral(?v)
	From
		lgd_relation_tags_string



/*

// Classes and object properties (generic)
Create View view_prefixed_properties As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(?property)
		?o = uri(?object)
	From
		node_generic_resources;




// Object Properties with prefix
// The prefix datatype causes troubles
Create View view_prefixed_properties As
	Construct {
		?s ?p ?o .
	}
	With
		?s = uri(concat(lgd:node, ?node_id))
		?p = uri(?property)
		?o = uri(concat(?object_prefix, ?v))
	From
		lgd_node_tags_prefix;

*/


		
/**
 * Copyright (C) 2009-2012, LinkedGeoData team at the MOLE research
 * group at AKSW / University of Leipzig
 *
 * This file is part of LinkedGeoData.
 *
 * LinkedGeoData is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * LinkedGeoData is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
 

