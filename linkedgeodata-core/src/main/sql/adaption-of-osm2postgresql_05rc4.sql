
-- -- -- -- -- --
--  POLYGONS (for geographies)- --
-- -- -- -- -- --
-- CREATE TABLE WITH POLYGONS MADE OF A SINGLE LINESTRING
-- For each way determine the closed linestrings and store them in a separate table
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
ANALYZE VERBOSE simple_polys;
CREATE UNIQUE INDEX idx_simple_polys_way_id ON simple_polys (way_id);


-- TODO Check the code below

-- ADD polygons to TABLE relations
-- Use the geometry datatype here, and only cast back to geography when done with
-- calculations
ALTER TABLE relations DROP COLUMN outerring_array;
ALTER TABLE relations DROP COLUMN outerring_linestring;
ALTER TABLE relations DROP COLUMN outerring;
ALTER TABLE relations DROP COLUMN innerring_linestring;
ALTER TABLE relations DROP COLUMN polygon;

ALTER TABLE relations ADD COLUMN outerring_array bigint[];
ALTER TABLE relations ADD COLUMN outerring_linestring geometry;
ALTER TABLE relations ADD COLUMN outerring geometry;

ALTER TABLE relations ADD COLUMN innerring_linestring geometry[];

ALTER TABLE relations ADD COLUMN polygon geography;

-- Create an ARRAY of all outerrings
UPDATE relations SET outerring_array = (
  SELECT  array_agg( r1.member_id) as array1
  FROM relation_members r1, ways
  WHERE r1.member_role = 'outer'
    and r1.relation_id = relations.id
    and ways.id = r1.member_id
    and ST_NPoints(ways.linestring::geometry) > 1 and ST_IsValid(ways.linestring::geometry)
  GROUP BY r1.relation_id
);

-- Create outerring linestring (not checked if valid yet)
UPDATE relations SET outerring_linestring = (
  SELECT   ST_LineMerge(ST_Collect(ways.linestring::geometry))
  FROM relation_members r1, ways
  WHERE r1.member_role = 'outer'
  and r1.relation_id = relations.id
  and 
  ST_NPoints(ways.linestring::geometry) > 1 and ST_IsValid(ways.linestring::geometry) 
  and ways.id = r1.member_id
  GROUP BY r1.relation_id
);


-- Create innerrings linestrings (not checked if valid yet)
UPDATE relations SET innerring_linestring = (
    ARRAY(
          SELECT ST_LineMerge(ST_Collect(linestring::geometry)) as inner_ring FROM ways WHERE ways.id  IN
            (SELECT member_id FROM relation_members r1
                WHERE r1.relation_id = relations.id and r1.member_role = 'inner'
            )
        )
  )
  WHERE array_length(ARRAY(
          SELECT ST_LineMerge(ST_Collect(linestring::geometry)) as inner_ring FROM ways WHERE ways.id  IN
            (SELECT member_id FROM relation_members r1
                WHERE r1.relation_id = relations.id and r1.member_role = 'inner'
            )
        ),1) >0 --check that there is at least one inner line
;

ALTER TABLE relations DROP COLUMN poly_type;
ALTER TABLE relations ADD COLUMN poly_type text;

UPDATE relations SET poly_type= 'unknown';



-- A ring with only 3 points is flat: A-B-A (1st point = 3rd point), hence buggy
UPDATE relations SET poly_type= 'no valid outerring' WHERE 
ST_NPoints(outerring_linestring::geometry) < 4 -- 5 relations are buggy in italy.osm
or outerring_linestring IS NULL -- about 16000 (relations between simple nodes?)
; 
-- The above must be done before what follows, because if less than 3 points, test may crash
UPDATE relations SET poly_type= 'no valid outerring' WHERE 
poly_type = 'unknown'
and NOT IsClosed( outerring_linestring); -- 136 are buggy in italy.osm

UPDATE relations SET poly_type= 'no valid outerring' WHERE 
poly_type = 'unknown'
and NOT ST_IsSimple( outerring_linestring); -- 102 more are buggy in italy.osm


-- If (NOT poly_type= 'no valid outerring') after the above, it means there is a valid outerring. Now, let us see if there is a valid inerring (or several)

-- If there is no inner line, there is no valid inerring
UPDATE relations SET poly_type= 'no valid inerring'
WHERE poly_type = 'unknown'
and innerring_linestring IS NULL
; -- 3015 more have no valid inerring

-- Innering must be closed
UPDATE relations SET poly_type= 'no valid inerring'
WHERE poly_type = 'unknown'
and (NOT ISClosed(ST_LineMerge(ST_Collect(innerring_linestring ))))
; -- 44 more are buggy

-- Innering must be big enough
-- FIXME: this checks that all the innerings together have more than 3 points, not that each innering is valid
UPDATE relations SET poly_type= 'no valid inerring'
WHERE poly_type = 'unknown'
and ST_NPoints(ST_LineMerge(ST_Collect(innerring_linestring ))) <4
; 



-- Check further validity of innerring: closed and big enough
-- However, if there are several holes and only one is too small, the test based on NPoints()
-- will not be sensitive enough (such wrong relations are probably extremely rare; none found in italy.osm).
-- FIXME: is this still necessary after the tests above?
UPDATE relations SET poly_type= 'valid innerring'
WHERE poly_type = 'unknown'
and ( ST_IsClosed(ST_LineMerge(ST_Collect(innerring_linestring ))))
and NPoints(ST_LineMerge(ST_Collect(innerring_linestring ))) > 3
; 

-- SELECT id,poly_type FROM relations WHERE ISClosed(ST_LineMerge(ST_Collect(innerring_linestring ))) and NPoints(ST_LineMerge(ST_Collect(innerring_linestring )))=3; --should give no result if OSM data were perfect; not the case (2 results for italy.osm).

-- TODO: try to collect the tags FROM the rings and assign them to the relation if relevant

UPDATE relations SET polygon = 
ST_MakePolygon(outerring_linestring, (innerring_linestring ))::geography
WHERE poly_type= 'valid innerring'
and ST_GeometryType(outerring_linestring) ='LINESTRING';


-- Create simple polygon not having (valid) innering(s)
UPDATE relations SET polygon = MakePolygon(outerring_linestring)::geography
WHERE (poly_type = 'no valid inerring'
OR poly_type = 'unknown')
--   and id=1309665
and GeometryType((outerring_linestring)) ='LINESTRING'
;


-- SO FAR EVERYTHING SEEMS FINE


-- Disaggregate multilines into linestrings, one per row
DROP TABLE if exists dumped_multilinestring;
CREATE TABLE dumped_multilinestring AS (
SELECT
    relations.id as relation_id,
    generate_series(
        1,
        (Select ST_NumGeometries(outerring_linestring))
    ) as lineseq,
    ST_GeometryN(outerring_linestring, generate_series(
        1, 
        ST_NumGeometries (outerring_linestring))
    ) AS outerring_linestring
FROM
    relations
WHERE
    GeometryType(outerring_linestring) = 'MULTILINESTRING' --anyway the query would not give any 'LINESTRING'
);

CREATE INDEX idx_dumped_multilinestring_relation_id ON dumped_multilinestring (relation_id);

ALTER TABLE dumped_multilinestring ADD COLUMN outerring_polygon geometry;

UPDATE
    dumped_multilinestring
SET
    outerring_polygon = ST_MakePolygon(outerring_linestring)
WHERE
    ST_IsClosed(outerring_linestring);



-- WTF???
-- ALTER TABLE dumped_multilinestring ADD COLUMN idint4 int4;
-- UPDATE dumped_multilinestring SET idint4 = relation_id*1000 + lineseq; --*might* create duplicate id if more than 999 linestrings in a single multilinestring AND if bad luck

-- Put all polygons in a single table
DROP TABLE IF EXISTS polygons ;
CREATE TABLE polygons AS ( 
  SELECT id as relation_id, polygon, NULL::text as class  FROM relations
 UNION ALL
  SELECT polygon, NULL::int4  as relation_id, NULL::text as class  FROM simple_polys
 UNION ALL
  SELECT outerring_polygon, relation_id, NULL::text as class  FROM dumped_multilinestring
);




