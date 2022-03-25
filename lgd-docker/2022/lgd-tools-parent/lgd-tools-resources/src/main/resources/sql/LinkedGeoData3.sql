



!!!USE LinkedGeoData3 Individual Views.sql instead of this file for now!!!



/****************************************************************************
 *                                                                          *
 * LinkedGeoData 3 Utility Functions                                        *
 *                                                                          *
 ****************************************************************************/



ALTER TABLE simple_polys cluster ON idx_simple_polys_polygon;
ALTER TABLE nodes cluster ON idx_nodes_geom;
ALTER TABLE ways cluster ON idx_ways_linestring;


/*
-- Source osm2postgresql
DROP TABLE simple_polys;
CREATE TABLE simple_polys AS(
  SELECT id AS way_id,
    ST_MakePolygon(linestring::geometry)::geography as polygon,
    ST_Area(ST_MakePolygon(linestring::geometry)::geography) as area -- TODO: convert into metric system (or better do it on projected, metric data, processing eveything after reprojection)
  FROM ways
  WHERE ST_IsClosed(linestring::geometry)
    and ST_NPoints(linestring::geometry) > 3
-- new in version 0.2
--    and idint4 not in (SELECT member_id FROM relation_members WHERE member_role = 'outer')
);


CREATE VIEW way_geoms AS 
	SELECT
		id, version, user_id, tstamp, changeset_id, ST_AsText(linestring) geom
	FROM
		ways a JOIN simple_polys b ON (b.way_id = a.id)
	WHERE
		NOT EXSIST (SELECT way_id FROM simple_polys b WHERE b.way_id = a.id)
UNION ALL 
	SELECT
		id, version, user_id, tstamp, changeset_id, ST_AsText(linestring) geom
	FROM
		ways a
	WHERE
		NOT EXSIST (SELECT way_id FROM simple_polys b WHERE b.way_id = a.id)

	
	
SELECT id, version, user_id, tstamp, changeset_id, ST_AsText(polygon) geom
*/


DROP FUNCTION lgd_tryparse_boolean(v TEXT);
CREATE FUNCTION lgd_tryparse_boolean(v TEXT) RETURNS BOOL AS
$$
DECLARE
BEGIN
    RETURN
    	CASE
    		WHEN (v ~* 'true'  OR v ~* 'yes' OR v = '1') THEN TRUE
    		WHEN (v ~* 'false' OR v ~* 'no'  OR v = '0') THEN FALSE
    		ELSE NULL
    	END;
END;
$$
    LANGUAGE 'plpgsql'
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;
    

    
DROP FUNCTION lgd_tryparse_int(str TEXT);
CREATE FUNCTION lgd_tryparse_int(str TEXT) RETURNS INT8 AS
$$
DECLARE
BEGIN
    RETURN str::int8;
EXCEPTION
	WHEN OTHERS THEN
		RETURN NULL;
END;
$$
    LANGUAGE 'plpgsql'
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;

    
DROP FUNCTION lgd_tryparse_float(str TEXT);
CREATE FUNCTION lgd_tryparse_float(str TEXT) RETURNS FLOAT AS
$$
DECLARE
BEGIN
    RETURN str::float;
EXCEPTION
	WHEN OTHERS THEN
		RETURN NULL;
END;
$$
    LANGUAGE 'plpgsql'
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;




/****************************************************************************
 *                                                                          *
 * LinkedGeoData 3 specific database objects                                *
 *     Indexes are a bit overused here - many tables are so small that the  *
 *     DB does a scan anyway                                                *
 *                                                                          * 
 *                                                                          *
 ****************************************************************************/

DROP TYPE IF EXISTS OSMEntityType;
CREATE TYPE OSMEntityType AS ENUM ('node', 'way', 'relation');

/**
 * A view for uniform access to all sorts of tags
 * 
 */
DROP VIEW IF EXISTS lgd_tags; 
CREATE VIEW lgd_tags AS
	SELECT
		t.osm_entity_type, t.osm_entity_id, t.k, t.v
	FROM
		((SELECT OSMEntityType('node') AS osm_entity_type, node_id AS osm_entity_id, k, v FROM node_tags) UNION ALL
		 (SELECT OSMEntityType('way') AS osm_entity_type, way_id AS osm_entity_id, k, v FROM way_tags) UNION ALL
		 (SELECT OSMEntityType('relation') AS osm_entity_type, relation_id AS osm_entity_id, k, v FROM relation_tags)) AS t;


    




CREATE TABLE IF NOT EXIST lgd_stat_datatype (
	k             text   PRIMARY KEY NOT NULL,
	count_total   bigint NOT NULL,
	count_int     bigint NOT NULL,
	count_float   bigint NOT NULL,
	count_boolean bigint NOT NULL
);





/* A helper view on absolute and relative errors */
DROP VIEW IF EXISTS  lgd_stat_datatype_error;
CREATE VIEW lgd_stat_datatype_error AS
SELECT
	a.*,
	count_total - count_boolean AS a_error_boolean, (1.0 - count_boolean / count_total::float) AS r_error_boolean,
	count_total - count_int     AS a_error_int,     (1.0 - count_int     / count_total::float) AS r_error_int,
	count_total - count_float   AS a_error_float,   (1.0 - count_float   / count_total::float) AS r_error_float
FROM
	lgd_stat_datatype a;






   
/****************************************************************************
 * EXPERIMENTAL: generic tags                                               *
 ****************************************************************************/
   
DROP VIEW IF EXISTS lgd_tags_boolean;
CREATE VIEW lgd_tags_boolean AS
  SELECT a.osm_entity_type, a.osm_entity_id, a.k, lgd_tryparse_boolean(a.v) AS v
   FROM lgd_tags a
   JOIN lgd_map_datatype b ON a.k = b.k
  WHERE lgd_tryparse_boolean(a.v) IS NOT NULL AND b.datatype = 'boolean'::lgd_datatype;


DROP VIEW IF EXISTS lgd_tags_int;
CREATE VIEW lgd_tags_int AS
  SELECT a.osm_entity_type, a.osm_entity_id, a.k, lgd_tryparse_int(a.v) AS v
   FROM lgd_tags a
   JOIN lgd_map_datatype b ON a.k = b.k
  WHERE lgd_tryparse_int(a.v) IS NOT NULL AND b.datatype = 'int'::lgd_datatype;
  

DROP VIEW IF EXISTS lgd_tags_float;
CREATE VIEW lgd_tags_float AS
  SELECT a.osm_entity_type, a.osm_entity_id, a.k, lgd_tryparse_float(a.v) AS v
   FROM lgd_tags a
   JOIN lgd_map_datatype b ON a.k = b.k
  WHERE lgd_tryparse_float(a.v) IS NOT NULL AND b.datatype = 'float'::lgd_datatype;

  
/**
 * Everything that is neither mapped to a datatype nor to a class/object property
 * becomes a datatype property
 */
DROP VIEW IF EXISTS lgd_tags_string;
CREATE VIEW lgd_tags_string AS
	SELECT a.osm_entity_type, a.osm_entity_id, a.k, a.v FROM lgd_tags a WHERE
		NOT EXISTS (SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k) AND 
		NOT EXISTS (SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k) AND 
		NOT EXISTS (SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v)) AND 
		NOT EXISTS (SELECT e.k FROM lgd_map_literal e WHERE e.k = a.k) AND
		NOT EXISTS (SELECT f.k FROM lgd_map_property f WHERE f.k = a.k) AND 
		NOT EXISTS (SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k); 

		
DROP VIEW IF EXISTS lgd_tags_text;
CREATE VIEW lgd_tags_text AS
 SELECT a.osm_entity_type, a.osm_entity_id, b.property, a.v, b.language
   FROM lgd_tags a
   JOIN lgd_map_literal b ON b.k = a.k;

		
/*
DROP VIEW IF EXISTS lgd_node_tags_text;
CREATE VIEW lgd_node_tags_text AS
 SELECT a.node_id, b.property, a.v, b.language
   FROM lgd_node_tags_string a
   JOIN lgd_map_literal b ON b.k = a.k;
*/
   
DROP VIEW IF EXISTS lgd_tags_resource_k;
CREATE VIEW lgd_tags_resource_k AS
 SELECT a.osm_entity_type, a.osm_entity_id, b.property, b.object
   FROM lgd_tags a
   JOIN lgd_map_resource_k b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k); 

  
DROP VIEW IF EXISTS lgd_tags_resource_kv;
CREATE VIEW lgd_tags_resource_kv AS   
  SELECT a.osm_entity_type, a.osm_entity_id, b.property, b.object
   FROM lgd_tags a
   JOIN lgd_map_resource_kv b USING(k, v)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k); 


DROP VIEW IF EXISTS lgd_tags_resource_prefix;
CREATE VIEW lgd_tags_resource_prefix AS   
  SELECT osm_entity_type, osm_entity_id, property, object_prefix, v, post_processing
   FROM lgd_tags a
   JOIN lgd_map_resource_prefix b USING(k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = b.k); 

DROP VIEW IF EXISTS lgd_tags_property;
CREATE VIEW lgd_tags_property AS   
  SELECT osm_entity_type, osm_entity_id, property, v "object"
   FROM lgd_tags a
   JOIN lgd_map_property b USING(k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = b.k) AND 
  NOT EXISTS (SELECT d.k FROM lgd_map_resource_k d WHERE d.k = b.k) AND 
  NOT EXISTS (SELECT e.k FROM lgd_map_resource_kv e WHERE e.k = b.k AND 
  NOT EXISTS (SELECT f.k FROM lgd_map_literal f WHERE f.k = b.k) AND
  NOT EXISTS (SELECT h.k FROM lgd_map_resource_prefix h WHERE h.k = b.k)); 



   
