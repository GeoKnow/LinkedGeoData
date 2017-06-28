CREATE TABLE lgd_relation_geoms(
    relation_id BIGINT PRIMARY KEY NOT NULL,
    geom geometry
)
;

INSERT INTO lgd_relation_geoms
    SELECT a.relation_id, lgd_try_create_polygon(a.relation_id)
    FROM (
        SELECT DISTINCT b.relation_id FROM relation_tags b WHERE b.k='postal_code'
        AND b.relation_id = 1301659
    ) a
    WHERE lgd_try_create_polygon(a.relation_id) IS NOT NULL
        AND a.relation_id NOT IN (SELECT c.relation_id FROM lgd_relation_geoms c)
--    LIMIT 10
;

