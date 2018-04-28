/**
 * Redifinitions of the default geometry view which excludes all geometries mapped by nominatim.
 * The nominatim geometries are mapped separately
 *
 */

CREATE OR REPLACE VIEW lgd_nodes_geometry AS
  SELECT a.id, a.geom FROM nodes a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'N' AND b.osm_id = a.id);

CREATE OR REPLACE VIEW lgd_ways_geometry AS
  SELECT a.id, a.linestring AS geom FROM ways a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'W' AND b.osm_id = a.id);


