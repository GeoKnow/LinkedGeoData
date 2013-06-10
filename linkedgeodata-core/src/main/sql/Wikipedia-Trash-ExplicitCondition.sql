/*

DROP FUNCTION IF EXISTS lgd_encodeWikiTitle(v TEXT);

DROP INDEX IF EXISTS idx_node_tags_wiki;
DROP INDEX IF EXISTS idx_way_tags_wiki;
DROP INDEX IF EXISTS idx_relation_tags_wiki;

DROP VIEW IF EXISTS lgd_node_tags_wiki;
DROP VIEW IF EXISTS lgd_way_tags_wiki;
DROP VIEW IF EXISTS lgd_relation_tags_wiki;

*/

CREATE FUNCTION lgd_encodeWikiTitle(v TEXT) RETURNS text AS
$$
DECLARE
BEGIN
    RETURN
    	CASE
    		WHEN ("v" ~* '^.*wiki/') THEN regexp_replace("v", '^.*wiki/', '') 
    		ELSE url_encode("v")
    	END;
END;
$$
    LANGUAGE 'plpgsql'
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;

    
CREATE INDEX idx_node_tags_wiki ON node_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k IN ('wikipedia', 'wikipedia:en');
CREATE INDEX idx_way_tags_wiki ON way_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k IN ('wikipedia', 'wikipedia:en');
CREATE INDEX idx_relation_tags_wiki ON relation_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k = 'wikipedia'::text OR k = 'wikipedia:en'::text;

CREATE VIEW lgd_node_tags_wiki AS
  SELECT t.node_id, t.k, lgd_encodeWikiTitle(t.v) v
  FROM node_tags t
  WHERE k IN ('wikipedia', 'wikipedia:en');

CREATE VIEW lgd_way_tags_wiki AS
  SELECT t.way_id, t.k, lgd_encodeWikiTitle(t.v) v
  FROM way_tags t
  WHERE k IN ('wikipedia', 'wikipedia:en');

CREATE VIEW lgd_relation_tags_wiki AS
  SELECT t.relation_id, t.k, lgd_encodeWikiTitle(t.v) v
  FROM relation_tags t
  WHERE k IN ('wikipedia'::text, 'wikipedia:en'::text);

  
CREATE VIEW lgd_relation_tags_wiki AS
  SELECT t.relation_id, t.k, lgd_encodeWikiTitle(t.v) v
  FROM relation_tags t
  WHERE k = 'wikipedia'::text OR k = 'wikipedia:en'::text;
