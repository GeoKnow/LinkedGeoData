
CREATE EXTENSION hstore;

drop table if exists place;
CREATE TABLE place (
  osm_type CHAR(1) NOT NULL,
  osm_id int8 NOT NULL,
  class TEXT NOT NULL,
  type TEXT NOT NULL,
  name HSTORE,
  admin_level INTEGER,
  housenumber TEXT,
  street TEXT,
  addr_place TEXT,
  isin TEXT,
  postcode TEXT,
  country_code VARCHAR(2),
  extratags HSTORE
);
SELECT AddGeometryColumn('place', 'geometry', 4326, 'GEOMETRY', 2);
ALTER TABLE place ALTER COLUMN geometry SET NOT NULL;

drop table if exists placex;
CREATE TABLE placex (
  place_id BIGINT NOT NULL,
  partition integer,
  LIKE place INCLUDING CONSTRAINTS,
  parent_place_id BIGINT,
  linked_place_id BIGINT,
  rank_address INTEGER,
  rank_search INTEGER,
  importance FLOAT,
  indexed_status INTEGER,
  indexed_date TIMESTAMP,
  wikipedia TEXT, -- calculated wikipedia article name (language:title)
  geometry_sector INTEGER,
  calculated_country_code varchar(2)
  ) ;
SELECT AddGeometryColumn('placex', 'centroid', 4326, 'GEOMETRY', 2);
CREATE UNIQUE INDEX idx_place_id ON placex USING BTREE (place_id);
CREATE INDEX idx_placex_osmid ON placex USING BTREE (osm_type, osm_id);
CREATE INDEX idx_placex_linked_place_id ON placex USING BTREE (linked_place_id);
CREATE INDEX idx_placex_rank_search ON placex USING BTREE (rank_search, geometry_sector);
CREATE INDEX idx_placex_geometry ON placex USING GIST (geometry);




