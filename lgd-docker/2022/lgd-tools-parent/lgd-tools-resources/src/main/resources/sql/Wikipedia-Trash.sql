-- Things I tried out, but caused bad query plans



----

  
CREATE INDEX idx_node_tags_wiki ON node_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE substring(k from 1 for 9) = 'wikipedia';
CREATE INDEX idx_way_tags_wiki ON way_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE substring(k from 1 for 9) = 'wikipedia';
CREATE INDEX idx_relation_tags_wiki ON relation_tags(lgd_encodeWikiTitle(v) text_pattern_ops) WHERE substring(k from 1 for 9) = 'wikipedia';

CREATE VIEW lgd_node_tags_wiki AS
  SELECT t.node_id, t.k, lgd_encodeWikiTitle(t.v) v FROM node_tags t WHERE substring(k from 1 for 9) = 'wikipedia';


CREATE VIEW lgd_way_tags_wiki AS
  SELECT t.way_id, t.k, lgd_encodeWikiTitle(t.v) v FROM way_tags t WHERE substring(k from 1 for 9) = 'wikipedia';


CREATE VIEW lgd_relation_tags_wiki AS
  SELECT t.relation_id, t.k, lgd_encodeWikiTitle(t.v) v FROM relation_tags t WHERE substring(k from 1 for 9) = 'wikipedia';
  

----
  

DROP FUNCTION IF EXISTS lgd_tryEncodeWikiTitle(k TEXT, v TEXT);
CREATE FUNCTION lgd_tryEncodeWikiTitle(k TEXT, v TEXT) RETURNS text AS
$$
DECLARE
BEGIN
    RETURN
    	CASE
    	    WHEN (substring(k from 1 for 9) = 'wikipedia') THEN lgd_encodeWikiTitle(v)
    		ELSE NULL::text
    	END;
END;
$$
    LANGUAGE 'plpgsql'
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;

    
/**
FUCK: This approach gives:
lgd=# explain select * from lgd_relation_tags_wiki where v = 'wikipedia:en';
                                                      QUERY PLAN                                                      
----------------------------------------------------------------------------------------------------------------------
 Index Scan using idx_relation_tags_wiki on relation_tags  (cost=0.50..56952.04 rows=40464 width=29)
   Index Cond: ((lgd_tryencodewikititle(k, v) IS NOT NULL) AND (lgd_tryencodewikititle(k, v) = 'wikipedia:en'::text))

It gives 40464 rows, where there should be *1*
 * 
 * 
 * 
 */
 
    
CREATE INDEX idx_relation_tags_wiki ON relation_tags(lgd_tryEncodeWikiTitle(k, v) text_pattern_ops) WHERE lgd_tryEncodeWikiTitle(k, v) IS NOT NULL;


CREATE VIEW lgd_relation_tags_wiki AS
  SELECT relation_id, k, lgd_tryEncodeWikiTitle(k, v) v
  FROM relation_tags
  WHERE lgd_tryEncodeWikiTitle(k, v) IS NOT NULL;


