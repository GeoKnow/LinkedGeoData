
CREATE TABLE node_tags AS SELECT a.id node_id, (each(a.tags)).key k, (each(a.tags)).value v FROM nodes a;
ALTER TABLE nodes DROP COLUMN tags;

CREATE TABLE way_tags AS SELECT a.id way_id, (each(a.tags)).key k, (each(a.tags)).value v FROM ways a;
ALTER TABLE ways DROP COLUMN tags;

CREATE TABLE relation_tags AS SELECT a.id relation_id, (each(a.tags)).key k, (each(a.tags)).value v FROM relations a;
ALTER TABLE relations DROP COLUMN tags;

DELETE FROM schema_info;

-- NOTE The remainder is from osmosis - /usr/share/doc/osmosis/examples/pgsimple_schema_0.6.sql

-- Configure the schema version.
INSERT INTO schema_info (version) VALUES (5);

-- Add indexes to tables.
CREATE INDEX idx_node_tags_node_id ON node_tags USING btree (node_id);
CREATE INDEX idx_way_tags_way_id ON way_tags USING btree (way_id);
CREATE INDEX idx_relation_tags_relation_id ON relation_tags USING btree (relation_id);


