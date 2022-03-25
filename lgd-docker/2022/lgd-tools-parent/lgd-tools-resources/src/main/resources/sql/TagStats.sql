DROP TYPE IF EXISTS osm_entity_type;
CREATE TYPE osm_entity_type AS ENUM ('node', 'way', 'relation');

DROP VIEW IF EXISTS lgd_tags; 
CREATE VIEW lgd_tags AS
	SELECT
		t.osm_entity_type, t.osm_entity_id, t.k, t.v
	FROM
		((SELECT OSMEntityType('node') AS osm_entity_type, node_id AS osm_entity_id, k, v FROM node_tags) UNION ALL
		 (SELECT OSMEntityType('way') AS osm_entity_type, way_id AS osm_entity_id, k, v FROM way_tags) UNION ALL
		 (SELECT OSMEntityType('relation') AS osm_entity_type, relation_id AS osm_entity_id, k, v FROM relation_tags)) AS t;


SELECT k, COUNT(k) AS usage_count, COUNT(DISTINCT v) AS distinct_value_count INTO lgd_stat_tags_k FROM lgd_tags GROUP BY k;
CREATE INDEX idx_lgd_stat_tags_k_k ON lgd_stat_tags_k(k);


SELECT k, v, COUNT(*) AS usage_count INTO lgd_stat_tags_kv FROM lgd_tags GROUP BY k, v;
CREATE INDEX idx_lgd_stats_kv_v ON lgd_stat_tags_kv(v);
CREATE INDEX idx_lgd_stats_kv_k ON lgd_stat_tags_kv(k);

