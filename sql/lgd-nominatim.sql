/**
 * Redifinitions of the default geometry views which override geometries with those computed by nominatim / pgsql.
 * The placex table may contain multiple rows for (osm_id, osm_type) pairs therefore a LIMIT 1 is used. The geometries should not differ -
 * but this is also not the place for validation.
 *
 */

CREATE OR REPLACE VIEW lgd_nodes_geometry AS
  SELECT a.id, COALESCE((SELECT b.geometry FROM placex b WHERE b.osm_type = 'N' AND b.osm_id = a.id LIMIT 1), a.geom) AS geom FROM nodes a;

CREATE OR REPLACE VIEW lgd_ways_geometry AS
  SELECT a.id, COALESCE((SELECT b.geometry FROM placex b WHERE b.osm_type = 'W' AND b.osm_id = a.id LIMIT 1), a.linestring) AS geom FROM ways a;


-- CREATE OR REPLACE VIEW lgd_nodes_geometry AS
--  SELECT a.id, a.geom FROM nodes a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'N' AND b.osm_id = a.id);

-- CREATE OR REPLACE VIEW lgd_ways_geometry AS
--   SELECT a.id, a.linestring AS geom FROM ways a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'W' AND b.osm_id = a.id);

