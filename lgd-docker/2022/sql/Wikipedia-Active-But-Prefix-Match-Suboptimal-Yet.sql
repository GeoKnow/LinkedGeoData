-- Postgres doesn't treat the prefix match well - it does not realize
-- that if k = e.g. 'wikipedia:en', it can drop the prefix scan and just use equals instead
-- i.e. it doesn't release when an equals constrains is already subsumed by the range 

CREATE INDEX idx_node_tags_wiki ON node_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k LIKE 'wikipedia%';
CREATE INDEX idx_way_tags_wiki ON way_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k LIKE 'wikipedia%';
CREATE INDEX idx_relation_tags_wiki ON relation_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE k LIKE 'wikipedia%';


CREATE VIEW lgd_node_tags_wiki AS
  SELECT a.node_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM node_tags a
  WHERE k LIKE 'wikipedia%';

  
CREATE VIEW lgd_way_tags_wiki AS
  SELECT a.way_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM way_tags a
  WHERE k LIKE 'wikipedia%';


CREATE VIEW lgd_relation_tags_wiki AS
  SELECT a.relation_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM relation_tags a
  WHERE k LIKE 'wikipedia%';
