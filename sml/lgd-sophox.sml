/**
 * Sparqlify configuration file for LinkedGeoData
 *
 * Resource flavour
 *
 */

// Prefixes (these will also be used in the query responses)
Prefix geo: <http://www.opengis.net/ont/geosparql#>

Prefix dcterms: <http://purl.org/dc/terms/>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix owl: <http://www.w3.org/2002/07/owl#>

Prefix foaf: <http://xmlns.com/foaf/0.1/>

// osmrn = osm resource node
// osmgw = osm geometry way
Prefix osmru: <https://www.openstreetmap.org/user/>

Prefix osmrn: <https://www.openstreetmap.org/node/>
Prefix osmgn: <https://www.openstreetmap.org/geometry/node/>

Prefix osmrw: <https://www.openstreetmap.org/way/>
Prefix osmgw: <https://www.openstreetmap.org/geometry/way/>

Prefix osmrr: <https://www.openstreetmap.org/relation/>
Prefix osmgr: <https://www.openstreetmap.org/geometry/relation/>

Prefix osmrrm: <https://www.openstreetmap.org/relation-member/>

Prefix osmt: <https://wiki.openstreetmap.org/wiki/Key:>
Prefix osmm: <https://www.openstreetmap.org/meta/>

Prefix wgs: <http://www.w3.org/2003/01/geo/wgs84_pos#>

Prefix wd: <http://www.wikidata.org/entity/>


Set defaultGraph = "http://linkedgeodata.org/osm/"



/**********
 * Status
 **********/
Create View status As
  Construct {
    <http://linkedgeodata.org/meta/status> ?p ?o .
  }
  With
    ?p = uri(osmm:, ?k)
    ?o = plainLiteral(?v)
  From
    status


/**********
 * Users
 **********/
Create View users As
  Construct {
    ?s
      a foaf:Agent ;
      rdfs:label ?l .
  }
  With
    ?s = uri(osmru:, ?id)
    ?l = plainLiteral(?name)
  From
    users


/*************
 * Ontology
 *************/

Create View property_int As
    Construct {
        ?s
            a rdf:Property ;
            a owl:DatatypeProperty ;
            rdfs:range xsd:integer .
    }
    With
        ?s = uri(?property)
    Constrain
        ?s prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT b.property FROM lgd_map_datatype a JOIN lgd_map_property b
        USING (k) WHERE a.datatype = 'int']]


Create View property_double As
    Construct {
        ?s
            a rdf:Property ;
            a owl:DatatypeProperty ;
            rdfs:range xsd:double .
    }
    With
        ?s = uri(?property)
    Constrain
        ?s prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT b.property FROM lgd_map_datatype a JOIN lgd_map_property b
        USING (k) WHERE a.datatype = 'float']]


Create View property_boolean As
    Construct {
        ?s
            a rdf:Property ;
            a owl:DatatypeProperty ;
            rdfs:range xsd:boolean .
    }
    With
        ?s = uri(?property)
    Constrain
        ?s prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT b.property FROM lgd_map_datatype a JOIN lgd_map_property b
        USING (k) WHERE a.datatype = 'boolean']]




/*************
 * Nodes
 *************/

Create View lgd_nodes As
    Construct {
        ?n a osmm:Node .
        ?n a geo:Feature .
        ?n owl:versionInfo ?v .
        ?n dcterms:contributor ?u .
        ?n dcterms:modified ?d .
        ?n osmm:changeset ?c .

        ?n wgs:long ?xx .
        ?n wgs:lat ?yy .
    }
    With
        ?n = uri(osmrn:, ?id)
        ?v = typedLiteral(?version, xsd:integer)
        ?u = uri(osmru:, ?user_id)
        ?d = typedLiteral(?tstamp, xsd:dateTime)
        ?c = typedLiteral(?changeset_id, xsd:integer)
        ?xx = typedLiteral(?x, xsd:double)
        ?yy = typedLiteral(?y, xsd:double)
    From
        [[SELECT *, ST_X(geom::geometry) x, ST_Y(geom::geometry) y, ST_X(geom::geometry)::float4::text x_text, ST_Y(geom::geometry)::float4::text y_text FROM nodes]];


Create View lgd_nodes_geometry As
    Construct {
        ?n geo:hasGeometry ?g .

        ?g a geo:Geometry .
        ?g geo:asWKT ?o .
    }
    With
        ?n = uri(osmrn:, ?id)
        ?g = uri(osmgn:, ?id)
        ?o = typedLiteral(?geom, geo:wktLiteral)
    From
      lgd_nodes_geometry



/*
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

Create View lgd_node_tags_resource_kd As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:way, ?node_id))
        ?p = uri(?property)
        ?o = uri(?object)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
        ?o prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_node_tags_resource_kd
*/


Create View osm_node_tags_boolean As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrn:, ?node_id)
        ?p = uri(osmt:, ENCODE_FOR_URI(?k))
        ?o = strdt(?v, xsd:boolean)
    From
        osm_node_tags_boolean

Create View osm_node_tags_int As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrn:, ?node_id)
        ?p = uri(osmt:, ENCODE_FOR_URI(?k))
        ?o = strdt(?v, xsd:int)
    From
        osm_node_tags_int

Create View osm_node_tags_float As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrn:, ?node_id)
        ?p = uri(osmt:, ENCODE_FOR_URI(?k))
        ?o = strdt(?v, xsd:float)
    From
        osm_node_tags_float

Create View lgd_node_tags_text As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrn:, ?node_id)
        ?p = uri(?property)
        ?o = strdt(?v, ?language)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
    From
        lgd_node_tags_text

Create View osm_node_tags_string As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrn:, ?node_id)
        ?p = uri(osmt:, ENCODE_FOR_URI(?k))
        ?o = plainLiteral(?v)
    From
        lgd_node_tags_string


/*
Create View lgd_node_tags_uri As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(lgd:node, ?node_id)
        ?p = uri(?property)
        ?o = uri(?v)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
    From
        lgd_node_tags_uri
*/


/*************
 * Ways
 *************/

/**
Create View lgd_ways As
    Construct {
        ?w a osmm:Way .
        ?w a geo:Feature .
        ?w lgdo:version ?v .
        ?w dcterms:contributor ?u .
        ?w dcterms:modified ?d .
        ?w lgdo:changeset ?c .
    }
    With
        ?w = uri(concat(lgd:way, ?id))
        ?v = typedLiteral(?version, xsd:int)
        ?u = uri(concat(lgd:user, ?user_id))
        ?d = typedLiteral(?tstamp, xsd:dateTime)
        ?c = typedLiteral(?changeset_id, xsd:int)
        //?g = typedLiteral(?geom, virtrdf:geometry)
    From
        ways;

Create View lgd_ways_geometry As
    Construct {
        ?w geo:hasGeometry ?g .

        ?g a geo:hasGeometry .
        ?g geo:asWKT ?o .
    }
    With
        ?w = uri(osmrw:, ?id)
        ?g = uri(osmgw:, ?id)
        ?o = typedLiteral(?geom, geo:wktLiteral)
    From
      lgd_ways_geometry
*/


/*
Create View lgd_ways_linestrings As
    Construct {
        ?w a geo:hasGeometry .
        ?w geo:asWKT ?g .
    }
    With
        //?w = uri(concat(lgd:way, ?id))
        ?w = uri(concat(lgdg:way, ?id))
        ?g = typedLiteral(?linestring, geo:wktLiteral)
    From
        [[SELECT id, linestring FROM ways a WHERE a.id NOT IN (SELECT way_id FROM simple_polys)]];
*/


/*
Create View ways_polygons As
    Construct {
        ?w a geo:hasGeometry .
        ?w geo:asWKT ?g .
    }
    With
        //?w = uri(concat(lgd:way, ?way_id))
        ?w = uri(concat(lgdg:way, ?way_id))
        ?g = typedLiteral(?polygon, geo:wktLiteral)
    From
        simple_polys;
*/


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
        ?w osmm:posSeq ?wn .
    }
    With
        ?w = uri(osmrw:, ?id)
        ?wn = uri(osmm:posSeq, ?id)
    From
        ways;

Create View lgd_pos_seq_type As
    Construct {
        ?wn a rdf:Seq .
    }
    With
        ?wn = uri(osmm:posSeq, ?id)
    From
        ways;


Create View view_waynodes As
    Construct {
        ?wn ?p ?n .
    }
    With
        ?wn = uri(osmm:posSeq, ?way_id)
        ?p = uri(rdf:_, ?sid)
        ?n = uri(osmrn:, ?node_id)
    From
        [[SELECT *, sequence_id + 1 AS sid FROM way_nodes]]


/*
Create View lgd_way_tags_resource_k As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(lgd:way, ?way_id)
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
        ?s = uri(lgd:way, ?way_id)
        ?p = uri(?property)
        ?o = uri(?object)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/"
        ?o prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_way_tags_resource_kv

Create View lgd_way_tags_resource_kd As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(?property)
        ?o = uri(?object)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
        ?o prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_way_tags_resource_kd

Create View lgd_way_tags_boolean As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:boolean)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_way_tags_boolean

Create View lgd_way_tags_int As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:int)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_way_tags_int

Create View lgd_way_tags_float As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:float)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_way_tags_float

Create View lgd_way_tags_text As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
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
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(osmt:, ENCODE_FOR_URI(?k))
        ?o = plainLiteral(?v)
    From
        lgd_way_tags_string


Create View lgd_way_tags_uri As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(osmrw:, ?way_id)
        ?p = uri(?property)
        ?o = uri(?v)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
    From
        lgd_way_tags_uri
*/


/*********
 * RELATIONS
 *********/

Create View lgd_relations As
    Construct {
        ?s a osmm:Relation .
        ?s a geo:Feature .
        ?s owl:versionInfo ?v .
        ?s dcterms:contributor ?u .
        ?s dcterms:modified ?d .
        ?s osmm:changeset ?c .
        //?w geo:hasGeometry ?g .

        ?s osmm:members ?m .
        ?m a rdf:Seq .

    }
    With
        ?s = uri(osmrr:, ?id)
        ?v = typedLiteral(?version, xsd:int)
        ?u = uri(osmru:, ?user_id)
        ?d = typedLiteral(?tstamp, xsd:dateTime)
        ?c = typedLiteral(?changeset_id, xsd:int)

        ?m = uri(osmrrm:, ?id)

    From
        relations
        //[[SELECT id, version, user_id, tstamp, changeset_id FROM relations]];

/*
Create View lgd_relations_geometry As
    Construct {
        ?s geo:hasGeometry ?g .

        ?g a geo:hasGeometry .
        ?g geo:asWKT ?o .
    }
    With
        ?s = uri(lgd:relation, ?id)
        ?g = uri(lgdg:relation, ?id)
        ?o = typedLiteral(?geom, geo:wktLiteral)
    From
      lgd_relations_geometry
*/

/*
Create View lgd_relation_geoms As
  Construct {
    ?s geo:hasGeometry ?g .

    ?g a geo:hasGeometry .
    ?g geo:asWKT ?o .
  }
  With
    ?s = uri(lgd:relation, ?relation_id)
    ?g = uri(lgdg:relation, ?relation_id)
    ?o = typedLiteral(?geom, geo:wktLiteral)
  From
    lgd_relation_geoms
*/

Create View lgd_relation_members_all As
  Construct {
        ?m ?p ?i .
        ?i osmm:role ?r .
  }
  With
        ?m = uri(osmrrm:, ?relation_id)
        ?p = uri(rdf:_, ?sid)
        ?i = uri(osmrrm:, ?relation_id, "_", ?sid)
        ?r = plainLiteral(?member_role)
  From
    [[SELECT *, sequence_id + 1 AS sid FROM relation_members]]


Create View lgd_relation_members_seq_nodes As
    Construct {
        ?i osmm:ref ?n
    }
    With
        ?i = uri(osmrrm:, ?relation_id, "_", ?sid)
        ?n = uri(osmrn:, ?member_id)
    From
        [[SELECT *, sequence_id + 1 AS sid FROM relation_members WHERE member_type = 'N']];

Create View lgd_relation_members_seq_ways As
    Construct {
        ?i osmm:ref ?w
    }
    With
        ?i = uri(osmrrm:, ?relation_id, "_", ?sid)
        ?w = uri(osmrw:, ?member_id)
    From
        [[SELECT *, sequence_id + 1 AS sid FROM relation_members WHERE member_type = 'W']];


Create View lgd_relation_members_seq_relations As
    Construct {
        ?i osmm:ref ?r
    }
    With
        ?i = uri(osmrrm:, ?relation_id, "_", ?sid)
        ?r = uri(osmrr:, ?member_id)
    From
        [[SELECT *, sequence_id + 1 AS sid FROM relation_members WHERE member_type = 'R']];


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




/*
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

Create View lgd_relation_tags_resource_kd As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:way, ?relation_id))
        ?p = uri(?property)
        ?o = uri(?object)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
        ?o prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_relation_tags_resource_kd

Create View lgd_relation_tags_boolean As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:relation, ?relation_id))
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:boolean)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_relation_tags_boolean

Create View lgd_relation_tags_int As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:relation, ?relation_id))
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:int)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        lgd_relation_tags_int

Create View lgd_relation_tags_float As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:relation, ?relation_id))
        ?p = uri(?property)
        ?o = typedLiteral(?v, xsd:float)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
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
        ?p = uri(concat('http://linkedgeodata.org/ontology/', ENCODE_FOR_URI(?k)))
        ?o = plainLiteral(?v)
    From
        lgd_relation_tags_string


Create View lgd_relation_tags_uri As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(lgd:relation, ?relation_id)
        ?p = uri(?property)
        ?o = uri(?v)
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/" "http://www.w3.org/" "http://xmlns.com/foaf/0.1/"
    From
        lgd_relation_tags_uri



Create View lgd_node_tags_resource_prefix As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:node, ?node_id))
        ?p = uri(?property)
        ?o = uri(concat(?object_prefix, ?v))
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT * FROM lgd_node_tags_resource_prefix WHERE post_processing='none']]

Create View lgd_way_tags_resource_prefix As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:way, ?way_id))
        ?p = uri(?property)
        ?o = uri(concat(?object_prefix, ?v))
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT * FROM lgd_way_tags_resource_prefix WHERE post_processing='none']]

Create View lgd_relation_tags_resource_prefix As
    Construct {
        ?s ?p ?o .
    }
    With
        ?s = uri(concat(lgd:relation, ?relation_id))
        ?p = uri(?property)
        ?o = uri(concat(?object_prefix, ?v))
    Constrain
        ?p prefix "http://linkedgeodata.org/ontology/"
    From
        [[SELECT * FROM lgd_relation_tags_resource_prefix WHERE post_processing='none']]
*/


/**
 * Wikidata mappings
 */

Create View node_tags_wikidata As
  Construct { ?s osmt:wikidata ?o }
  With
    ?s = uri(osmrn:, ?node_id)
    ?o = uri(concat(wd:, ?v))
  From [[SELECT * FROM node_tags WHERE k = 'wikidata']];

Create View way_tags_wikidata As
  Construct { ?s osmt:wikidata ?o }
  With
    ?s = uri(osmrw:, ?way_id)
    ?o = uri(wd:, ?v)
  From [[SELECT * FROM way_tags WHERE k = 'wikidata']];

Create View relation_tags_wikidata As
  Construct { ?s osmt:wikidata ?o }
  With
    ?s = uri(osmrr:, ?relation_id)
    ?o = uri(wd:, ?v)
  From [[SELECT * FROM relation_tags WHERE k = 'wikidata']];



/**
 * Copyright (C) 2009-2022, LinkedGeoData team
 * at AKSW / University of Leipzig / Institute of Applied Informatics
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


