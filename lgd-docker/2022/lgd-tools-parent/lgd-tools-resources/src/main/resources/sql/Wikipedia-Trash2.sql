-- Requires this awesome urlencode/urldecode extension: https://github.com/okbob/url_encode
-- Clone, Install the dev package for postgres, run make and call CREATE EXTENSION url_encode; in your DB.

-- if the URL already starts with http:// 


-- Tried whether adding an artificial join makes postgres improve on its stats
-- but he experiment failed
CREATE TABLE lgd_wikipedia_k(
    k text PRIMARY KEY
);

INSERT INTO lgd_wikipedia_k(k) VALUES ('wikipedia'), ('wikipedia:en');





CREATE VIEW lgd_node_tags_wiki AS
  SELECT a.node_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM node_tags a
  JOIN lgd_wikipedia_k b ON a.k = b.k
  WHERE a.k LIKE 'wikipedia%';


CREATE VIEW lgd_way_tags_wiki AS
  SELECT a.way_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM way_tags a
  JOIN lgd_wikipedia_k b ON a.k = b.k
  WHERE a.k LIKE 'wikipedia%';

CREATE VIEW lgd_relation_tags_wiki AS
  SELECT a.relation_id, a.k, lgd_encodeWikiTitle(a.v) v
  FROM relation_tags a
  JOIN lgd_wikipedia_k b ON a.k = b.k
  WHERE a.k LIKE 'wikipedia%';


    

    