-- This is a slightly modified version of the script found at
-- https://github.com/jocelynj/osm-polygons-generation
-- The modification is merely that the functions only return the polygon rather
-- than storing it into a table.

CREATE OR REPLACE FUNCTION lgd_ends(linestring geometry) RETURNS SETOF geometry AS $$
DECLARE BEGIN
    RETURN NEXT ST_PointN(linestring,1);
    RETURN NEXT ST_PointN(linestring,ST_NPoints(linestring));
    RETURN;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION lgd_create_polygon(rel_id BIGINT) RETURNS geometry
AS $BODY$
DECLARE
  line RECORD;
  ok boolean;
BEGIN
  DROP TABLE IF EXISTS tmp_way_poly;

  -- recup des way des relations
  CREATE TEMP TABLE tmp_way_poly AS
  WITH RECURSIVE deep_relation(id) AS (
        SELECT
            rel_id::bigint AS member_id
    UNION
        SELECT
            relation_members.member_id
        FROM
            deep_relation
            JOIN relation_members ON
                relation_members.relation_id = deep_relation.id AND
                relation_members.member_type = 'R' AND
                relation_members.member_role != 'subarea' AND
                relation_members.member_role != 'land_area'
  )
  SELECT DISTINCT ON (ways.id)
    ways.linestring, ways.id
  FROM
    deep_relation
    JOIN relation_members ON
        relation_members.relation_id = deep_relation.id AND
        relation_members.member_type = 'W'
    JOIN ways ON
        ways.id = relation_members.member_id
  ;

  SELECT INTO ok 't';

  FOR line in SELECT
             ST_X(geom) AS x, ST_Y(geom) AS y, string_agg(id::varchar(255), ' ') AS id
           FROM
             (SELECT lgd_ends(linestring) AS geom, id FROM tmp_way_poly) AS d
           GROUP BY
             geom
           HAVING
             COUNT(*) != 2
  LOOP
    SELECT INTO ok 'f';
    RAISE NOTICE 'missing connexion at point %f %f - ways: %', line.x, line.y, line.id;
  END LOOP;

  RETURN (SELECT st_collect(st_makepolygon(geom))
           FROM (SELECT (st_dump(st_linemerge(st_collect(d.linestring)))).geom
                 FROM (SELECT DISTINCT(linestring) AS linestring
                        FROM tmp_way_poly) as d
                ) as c
         );
END
$BODY$
LANGUAGE 'plpgsql' ;



CREATE OR REPLACE FUNCTION lgd_try_create_polygon(rel_id BIGINT) RETURNS geometry AS
$$
DECLARE
BEGIN
    RETURN lgd_create_polygon(rel_id);
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END;
$$
    LANGUAGE 'plpgsql'
    RETURNS NULL ON NULL INPUT;



CREATE OR REPLACE FUNCTION lgd_create_polygon2(rel_id BIGINT) RETURNS geometry
AS $BODY$
DECLARE
  line RECORD;
  ok boolean;
BEGIN
  DROP TABLE IF EXISTS tmp_way_poly;

  -- recup des way des relations
  EXECUTE format('CREATE TEMP TABLE tmp_way_poly AS
    SELECT * FROM "tmp_way_poly_%s"', rel_id);

  EXECUTE format('DROP TABLE "tmp_way_poly_%s"', rel_id);

  SELECT INTO ok 't';

  FOR line in SELECT
             ST_X(geom) AS x, ST_Y(geom) AS y, string_agg(id::varchar(255), ' ') AS id
           FROM
             (SELECT lgd_ends(linestring) AS geom, id FROM tmp_way_poly) AS d
           GROUP BY
             geom
           HAVING
             COUNT(*) != 2
  LOOP
    SELECT INTO ok 'f';
    RAISE NOTICE 'missing connexion at point %f %f - ways: %', line.x, line.y, line.id;
  END LOOP;

  RETURN
          (SELECT st_collect(st_makepolygon(geom))
           FROM (SELECT (st_dump(st_linemerge(st_collect(d.linestring)))).geom
                 FROM (SELECT DISTINCT(linestring) AS linestring
                        FROM tmp_way_poly) as d
                ) as c
         );
END
$BODY$
LANGUAGE 'plpgsql' ;

