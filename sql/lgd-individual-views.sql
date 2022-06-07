/****************************************************************************
 *                                                                          *
 * Helper Views to be used with Sparqlify                                   *
 *     (https://github.com/AKSW/Sparqlify)                                  *
 *                                                                          *
 ****************************************************************************/

-- DROP VIEW IF EXISTS lgd_mapped_k;
-- CREATE VIEW lgd_mapped_k AS
--   SELECT b.k FROM lgd_map_datatype b UNION ALL
--   SELECT c.k FROM lgd_map_resource_k UNION ALL
--   SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v) UNION ALL
--   SELECT e.k FROM lgd_map_literal e WHERE e.k = a.k UNION ALL
--   SELECT f.k FROM lgd_map_property f WHERE f.k = a.k UNION ALL
--   SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k;



/****************************************************************************
 * nodes                                                                    *
 ****************************************************************************/

/* This view is an extension point and can be replaced with ones for better geometries */
DROP VIEW IF EXISTS lgd_nodes_geometry CASCADE;
CREATE VIEW lgd_nodes_geometry AS
  SELECT id, geom
   FROM nodes;


DROP VIEW IF EXISTS osm_node_tags_boolean CASCADE;
CREATE VIEW osm_node_tags_boolean AS
  SELECT a.node_id, a.k, lgd_tryparse_boolean(a.v) AS v
   FROM node_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_boolean(a.v) IS NOT NULL AND b.datatype = 'boolean'::lgd_datatype;

DROP VIEW IF EXISTS lgd_node_tags_boolean CASCADE;
CREATE VIEW lgd_node_tags_boolean AS
  SELECT a.node_id, b.property, a.v
   FROM osm_node_tags_boolean a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_node_tags_int CASCADE;
CREATE VIEW osm_node_tags_int AS
  SELECT a.node_id, a.k, lgd_tryparse_int(a.v) AS v
   FROM node_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_int(a.v) IS NOT NULL AND b.datatype = 'int'::lgd_datatype;

DROP VIEW IF EXISTS lgd_node_tags_int CASCADE;
CREATE VIEW lgd_node_tags_int AS
  SELECT a.node_id, b.property, a.v
   FROM osm_node_tags_int a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_node_tags_float CASCADE;
CREATE VIEW osm_node_tags_float AS
  SELECT a.node_id, a.k, lgd_tryparse_float(a.v) AS v
   FROM node_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_float(a.v) IS NOT NULL AND b.datatype = 'float'::lgd_datatype;

DROP VIEW IF EXISTS lgd_node_tags_float CASCADE;
CREATE VIEW lgd_node_tags_float AS
  SELECT a.node_id, b.property, a.v
   FROM osm_node_tags_float a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_node_tags_uri CASCADE;
CREATE VIEW osm_node_tags_uri AS
  SELECT a.node_id, a.k, lgd_tryparse_uri(a.v) AS v
   FROM node_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_uri(a.v) IS NOT NULL AND b.datatype = 'uri'::lgd_datatype;

DROP VIEW IF EXISTS lgd_node_tags_uri CASCADE;
CREATE VIEW lgd_node_tags_uri AS
  SELECT a.node_id, b.property, a.v
   FROM osm_node_tags_uri a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_node_tags_text CASCADE;
CREATE VIEW osm_node_tags_text AS
 SELECT a.node_id, a.k, a.v, b.language
   FROM node_tags a
   JOIN lgd_map_language b ON b.k = a.k;

DROP VIEW IF EXISTS lgd_node_tags_text CASCADE;
CREATE VIEW lgd_node_tags_text AS
 SELECT a.node_id, b.property, a.v, a.language
   FROM osm_node_tags_text a
   JOIN lgd_map_property b ON b.k = a.k;


/**
 * Everything that is neither mapped to a datatype nor to a class/object property
 * becomes a data property
 */
-- This view seems to work ALOT better than the one above - 7 seconds vs 6min after vacuum full analyze ~Claus 2018-04-23;)
DROP VIEW IF EXISTS lgd_node_tags_string CASCADE;
CREATE VIEW lgd_node_tags_string AS
    SELECT a.node_id, a.k, a.v FROM node_tags a WHERE
        NOT EXISTS (SELECT b.k FROM lgd_map_datatype b WHERE b.k = a.k) AND
        NOT EXISTS (SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k) AND
        NOT EXISTS (SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v)) AND
        NOT EXISTS (SELECT e.k FROM lgd_map_language e WHERE e.k = a.k) AND
        NOT EXISTS (SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);


DROP VIEW IF EXISTS lgd_node_tags_resource_k CASCADE;
CREATE VIEW lgd_node_tags_resource_k AS
 SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_k b ON b.k = a.k;


-- This views seems to give better plans than [1]
DROP VIEW IF EXISTS lgd_node_tags_resource_kv CASCADE;
CREATE VIEW lgd_node_tags_resource_kv AS
  SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v);


-- A default mapping is applied if the (k) is in resource_kd, but (k, v) is not in resource_kv
DROP VIEW IF EXISTS lgd_node_tags_resource_kd CASCADE;
CREATE VIEW lgd_node_tags_resource_kd AS
 SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_kd b ON b.k = a.k
 WHERE
  NOT EXISTS (SELECT c.k, c.v FROM lgd_map_resource_kv c WHERE (c.k, c.v) = (a.k, a.v));


DROP VIEW IF EXISTS lgd_node_tags_resource_prefix CASCADE;
CREATE VIEW lgd_node_tags_resource_prefix AS
  SELECT a.node_id, b.property, b.object_prefix, a.v, b.post_processing
   FROM node_tags a
   JOIN lgd_map_resource_prefix b ON b.k = a.k;
-- WHERE
--  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = b.k);


/*
CREATE OR REPLACE VIEW lgd_node_tags_string AS
    SELECT a.node_id, a.k, a.v FROM node_tags a WHERE
        NOT EXISTS (
            SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k UNION ALL
            SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k UNION ALL
            SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v) UNION ALL
            SELECT e.k FROM lgd_map_literal e WHERE e.k = a.k UNION ALL
            SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);
*/


/*
CREATE VIEW lgd_node_tags_resource_k AS
 SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_k b ON b.k = a.k;
   WHERE
    b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);
*/

/*
-- [1] Gives worse plans than the version below
DROP VIEW IF EXISTS lgd_node_tags_resource_kv;
CREATE VIEW lgd_node_tags_resource_kv AS
  SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/

-- This views seems to give better plans than that above
/*
DROP VIEW IF EXISTS lgd_node_tags_resource_kv;
CREATE VIEW lgd_node_tags_resource_kv AS
  SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v);
-- WHERE
--  b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);
*/


/*
DROP VIEW IF EXISTS lgd_node_node_tags_text;
CREATE VIEW lgd_node_node_tags_text AS
 SELECT a.node_id, b.property, a.v, b.language
   FROM lgd_node_node_tags_string a
   JOIN lgd_map_literal b ON b.k = a.k;
*/


/*
-- Gives worse plans than the version below
DROP VIEW IF EXISTS lgd_node_tags_resource_k;
CREATE VIEW lgd_node_tags_resource_k AS
 SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_k b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/


/*
DROP VIEW IF EXISTS lgd_node_tags_resource_kv;
CREATE VIEW lgd_node_tags_resource_kv AS
  SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN (SELECT k FROM lgd_map_resource_kv WHERE k NOT IN (SELECT k FROM lgd_map_datatype c)) b ON (b.k, b.v) = (a.k, a.v);

DROP VIEW IF EXISTS lgd_node_tags_resource_kv;
CREATE VIEW lgd_node_tags_resource_kv AS
  SELECT a.node_id, b.property, b.object
   FROM node_tags a
   JOIN lgd_map_resource_kv b ON (b.v = a.v)
WHERE
    b.k = a.k;
*/

/* TODO Resolve above */


-- VALIDATE There should not be an overlap between resource_k and lgd_node_tags_property

/****************************************************************************
 * ways                                                                     *
 ****************************************************************************/

/* This view is an extension point and can be replaced with ones for better geometries */
DROP VIEW IF EXISTS lgd_ways_geometry CASCADE;
CREATE VIEW lgd_ways_geometry AS
  SELECT id, linestring AS geom
   FROM ways;


DROP VIEW IF EXISTS osm_way_tags_boolean CASCADE;
CREATE VIEW osm_way_tags_boolean AS
  SELECT a.way_id, a.k, lgd_tryparse_boolean(a.v) AS v
   FROM way_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_boolean(a.v) IS NOT NULL AND b.datatype = 'boolean'::lgd_datatype;

DROP VIEW IF EXISTS lgd_way_tags_boolean CASCADE;
CREATE VIEW lgd_way_tags_boolean AS
  SELECT a.way_id, b.property, a.v
   FROM osm_way_tags_boolean a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_way_tags_int CASCADE;
CREATE VIEW osm_way_tags_int AS
  SELECT a.way_id, a.k, lgd_tryparse_int(a.v) AS v
   FROM way_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_int(a.v) IS NOT NULL AND b.datatype = 'int'::lgd_datatype;

DROP VIEW IF EXISTS lgd_way_tags_int CASCADE;
CREATE VIEW lgd_way_tags_int AS
  SELECT a.way_id, b.property, a.v
   FROM osm_way_tags_int a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_way_tags_float CASCADE;
CREATE VIEW osm_way_tags_float AS
  SELECT a.way_id, a.k, lgd_tryparse_float(a.v) AS v
   FROM way_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_float(a.v) IS NOT NULL AND b.datatype = 'float'::lgd_datatype;

DROP VIEW IF EXISTS lgd_way_tags_float CASCADE;
CREATE VIEW lgd_way_tags_float AS
  SELECT a.way_id, b.property, a.v
   FROM osm_way_tags_float a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_way_tags_uri CASCADE;
CREATE VIEW osm_way_tags_uri AS
  SELECT a.way_id, a.k, lgd_tryparse_uri(a.v) AS v
   FROM way_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_uri(a.v) IS NOT NULL AND b.datatype = 'uri'::lgd_datatype;

DROP VIEW IF EXISTS lgd_way_tags_uri CASCADE;
CREATE VIEW lgd_way_tags_uri AS
  SELECT a.way_id, b.property, a.v
   FROM osm_way_tags_uri a
   JOIN lgd_map_property b ON b.k = a.k;


/**
 * Everything that is neither mapped to a datatype nor to a class/object property
 * becomes a datatype property
 */
DROP VIEW IF EXISTS lgd_way_tags_string CASCADE;
CREATE VIEW lgd_way_tags_string AS
    SELECT a.way_id, a.k, a.v FROM way_tags a WHERE
        NOT EXISTS (SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k) AND
        NOT EXISTS (SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k) AND
        NOT EXISTS (SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v)) AND
        NOT EXISTS (SELECT e.k FROM lgd_map_language e WHERE e.k = a.k) AND
        NOT EXISTS (SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);

--CREATE OR REPLACE VIEW lgd_way_tags_string AS
--    SELECT a.way_id, a.k, a.v FROM way_tags a WHERE
--        NOT EXISTS (
--            SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k UNION ALL
--            SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k UNION ALL
--            SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v) UNION ALL
--            SELECT e.k FROM lgd_map_literal e WHERE e.k = a.k UNION ALL
--            SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);


DROP VIEW IF EXISTS lgd_way_tags_text;
CREATE VIEW lgd_way_tags_text AS
 SELECT a.way_id, c.property, a.v, b.language
   FROM way_tags a
   JOIN lgd_map_language b ON b.k = a.k
   JOIN lgd_map_property c ON c.k = b.k;


/*
DROP VIEW IF EXISTS lgd_way_way_tags_text;
CREATE VIEW lgd_way_way_tags_text AS
 SELECT a.way_id, b.property, a.v, b.language
   FROM lgd_way_way_tags_string a
   JOIN lgd_map_literal b ON b.k = a.k;
*/

/*
Gives worse plans than the version below
DROP VIEW IF EXISTS lgd_way_tags_resource_k;
CREATE VIEW lgd_way_tags_resource_k AS
 SELECT a.way_id, b.property, b.object
   FROM way_tags a
   JOIN lgd_map_resource_k b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/

DROP VIEW IF EXISTS lgd_way_tags_resource_k CASCADE;
CREATE VIEW lgd_way_tags_resource_k AS
 SELECT a.way_id, b.property, b.object
   FROM way_tags a
   JOIN lgd_map_resource_k b ON b.k = a.k;

-- WHERE
--  b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);

/*
Gives worse plans than the version below
DROP VIEW IF EXISTS lgd_way_tags_resource_kv;
CREATE VIEW lgd_way_tags_resource_kv AS
  SELECT a.way_id, b.property, b.object
   FROM way_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/

DROP VIEW IF EXISTS lgd_way_tags_resource_kv CASCADE;
CREATE VIEW lgd_way_tags_resource_kv AS
  SELECT a.way_id, b.property, b.object
   FROM way_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v);

-- WHERE
--  b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);


DROP VIEW IF EXISTS lgd_way_tags_resource_kd CASCADE;
CREATE VIEW lgd_way_tags_resource_kd AS
 SELECT a.way_id, b.property, b.object
   FROM way_tags a
   JOIN lgd_map_resource_kd b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k, c.v FROM lgd_map_resource_kv c WHERE (c.k, c.v) = (a.k, a.v));



DROP VIEW IF EXISTS lgd_way_tags_resource_prefix CASCADE;
CREATE VIEW lgd_way_tags_resource_prefix AS
  SELECT a.way_id, b.property, b.object_prefix, a.v, b.post_processing
   FROM way_tags a
   JOIN lgd_map_resource_prefix b ON (b.k = a.k);
-- WHERE
--  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);


/*
CREATE OR REPLACE VIEW lgd_way_tags_property AS
  SELECT a.way_id, b.property, a.v "object"
   FROM way_tags a, lgd_map_property b
 WHERE
  b.k = a.k AND
  NOT EXISTS (
    SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k UNION ALL
    SELECT e.k FROM lgd_map_resource_kv e WHERE e.k = a.k UNION ALL
    SELECT f.k FROM lgd_map_literal f WHERE f.k = a.k UNION ALL
    SELECT h.k FROM lgd_map_resource_prefix h WHERE h.k = a.k);
*/

/****************************************************************************
 * relations                                                                *
 ****************************************************************************/
--DROP VIEW IF EXISTS lgd_relations_geometry;
--CREATE VIEW lgd_relations_geometry AS
--  SELECT NULL::bigint AS id, NULL::geometry AS geom WHERE false;


DROP VIEW IF EXISTS osm_relation_tags_boolean CASCADE;
CREATE VIEW osm_relation_tags_boolean AS
  SELECT a.relation_id, a.k, lgd_tryparse_boolean(a.v) AS v
   FROM relation_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_boolean(a.v) IS NOT NULL AND b.datatype = 'boolean'::lgd_datatype;

DROP VIEW IF EXISTS lgd_relation_tags_boolean CASCADE;
CREATE VIEW lgd_relation_tags_boolean AS
  SELECT a.relation_id, b.property, a.v
   FROM osm_relation_tags_boolean a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_relation_tags_int CASCADE;
CREATE VIEW osm_relation_tags_int AS
  SELECT a.relation_id, a.k, lgd_tryparse_int(a.v) AS v
   FROM relation_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_int(a.v) IS NOT NULL AND b.datatype = 'int'::lgd_datatype;

DROP VIEW IF EXISTS lgd_relation_tags_int CASCADE;
CREATE VIEW lgd_relation_tags_int AS
  SELECT a.relation_id, b.property, a.v
   FROM osm_relation_tags_int a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_relation_tags_float CASCADE;
CREATE VIEW osm_relation_tags_float AS
  SELECT a.relation_id, a.k, lgd_tryparse_float(a.v) AS v
   FROM relation_tags a
   JOIN lgd_map_datatype b ON a.k = b.k
  WHERE lgd_tryparse_float(a.v) IS NOT NULL AND b.datatype = 'float'::lgd_datatype;

DROP VIEW IF EXISTS lgd_relation_tags_float CASCADE;
CREATE VIEW lgd_relation_tags_float AS
  SELECT a.relation_id, b.property, a.v
   FROM osm_relation_tags_float a
   JOIN lgd_map_property b ON b.k = a.k;


DROP VIEW IF EXISTS osm_relation_tags_uri CASCADE;
CREATE VIEW osm_relation_tags_uri AS
  SELECT a.relation_id, a.k, lgd_tryparse_uri(a.v) AS v
   FROM relation_tags a
   JOIN lgd_map_datatype b ON b.k = a.k
  WHERE lgd_tryparse_uri(a.v) IS NOT NULL AND b.datatype = 'uri'::lgd_datatype;

DROP VIEW IF EXISTS lgd_relation_tags_uri CASCADE;
CREATE VIEW lgd_relation_tags_uri AS
  SELECT a.relation_id, b.property, a.v
   FROM relation_tags a
   JOIN lgd_map_property b ON b.k = a.k;


/**
 * Everything that is neither mapped to a datatype nor to a class/object property
 * becomes a datatype property
 */
DROP VIEW IF EXISTS lgd_relation_tags_string CASCADE;
CREATE VIEW lgd_relation_tags_string AS
    SELECT a.relation_id, a.k, a.v FROM relation_tags a WHERE
        NOT EXISTS (SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k) AND
        NOT EXISTS (SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k) AND
        NOT EXISTS (SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v)) AND
        NOT EXISTS (SELECT e.k FROM lgd_map_language e WHERE e.k = a.k) AND
        NOT EXISTS (SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);


/*
CREATE OR REPLACE VIEW lgd_relation_tags_string AS
    SELECT a.relation_id, a.k, a.v FROM relation_tags a WHERE
        NOT EXISTS (
            SELECT b.k FROM lgd_map_datatype  b WHERE b.k = a.k UNION ALL
            SELECT c.k FROM lgd_map_resource_k  c WHERE c.k = a.k UNION ALL
            SELECT d.k FROM lgd_map_resource_kv d WHERE (d.k, d.v) = (a.k, a.v) UNION ALL
            SELECT e.k FROM lgd_map_literal e WHERE e.k = a.k UNION ALL
            SELECT g.k FROM lgd_map_resource_prefix g WHERE g.k = a.k);
*/

DROP VIEW IF EXISTS osm_relation_tags_text CASCADE;
CREATE VIEW osm_relation_tags_text AS
 SELECT a.relation_id, a.k, a.v, b.language
   FROM relation_tags a
   JOIN lgd_map_language b ON b.k = a.k;

DROP VIEW IF EXISTS lgd_relation_tags_text CASCADE;
CREATE VIEW lgd_relation_tags_text AS
 SELECT a.relation_id, b.property, a.v, a.language
   FROM osm_relation_tags_text a
   JOIN lgd_map_property b ON b.k = a.k;

/*
DROP VIEW IF EXISTS lgd_relation_relation_tags_text;
CREATE VIEW lgd_relation_relation_tags_text AS
 SELECT a.relation_id, b.property, a.v, b.language
   FROM lgd_relation_relation_tags_string a
   JOIN lgd_map_literal b ON b.k = a.k;
*/

/*
Gives worse plans than the verison below
DROP VIEW IF EXISTS lgd_relation_tags_resource_k;
CREATE VIEW lgd_relation_tags_resource_k AS
 SELECT a.relation_id, b.property, b.object
   FROM relation_tags a
   JOIN lgd_map_resource_k b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/

DROP VIEW IF EXISTS lgd_relation_tags_resource_k CASCADE;
CREATE VIEW lgd_relation_tags_resource_k AS
 SELECT a.relation_id, b.property, b.object
   FROM relation_tags a
   JOIN lgd_map_resource_k b ON b.k = a.k;

-- WHERE
--  b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);


/*
Gives worse plans than the verison below
DROP VIEW IF EXISTS lgd_relation_tags_resource_kv;
CREATE VIEW lgd_relation_tags_resource_kv AS
  SELECT a.relation_id, b.property, b.object
   FROM relation_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v)
 WHERE
  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = a.k);
*/

DROP VIEW IF EXISTS lgd_relation_tags_resource_kv CASCADE;
CREATE VIEW lgd_relation_tags_resource_kv AS
  SELECT a.relation_id, b.property, b.object
   FROM relation_tags a
   JOIN lgd_map_resource_kv b ON (b.k, b.v) = (a.k, a.v);
-- WHERE
--  b.k NOT IN (SELECT c.k FROM lgd_map_datatype c);


DROP VIEW IF EXISTS lgd_relation_tags_resource_kd CASCADE;
CREATE VIEW lgd_relation_tags_resource_kd AS
 SELECT a.relation_id, b.property, b.object
   FROM relation_tags a
   JOIN lgd_map_resource_kd b ON (b.k = a.k)
 WHERE
  NOT EXISTS (SELECT c.k, c.v FROM lgd_map_resource_kv c WHERE (c.k, c.v) = (a.k, a.v));


DROP VIEW IF EXISTS lgd_relation_tags_resource_prefix CASCADE;
CREATE VIEW lgd_relation_tags_resource_prefix AS
  SELECT a.relation_id, b.property, b.object_prefix, a.v, b.post_processing
   FROM relation_tags a
   JOIN lgd_map_resource_prefix b ON b.k = a.k;
-- WHERE
--  NOT EXISTS (SELECT c.k FROM lgd_map_datatype c WHERE c.k = b.k);










