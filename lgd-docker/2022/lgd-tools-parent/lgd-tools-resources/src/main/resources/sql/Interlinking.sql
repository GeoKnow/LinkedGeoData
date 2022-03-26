INSERT
  INTO "lgd_node_interlinks"("node_id", "source", "o", "o_local_name")
    SELECT
      substring("s" from 39)::bigint AS "node_id", "source", "o", "o_local_name"
    FROM
      "lgd_interlinks"
    WHERE
      "s" LIKE 'http://linkedgeodata.org/triplify/node%'
;


INSERT
  INTO "lgd_way_interlinks"("way_id", "source", "o", "o_local_name")
    SELECT
      substring("s" from 38)::bigint AS "way_id", "source", "o", "o_local_name"
    FROM
      "lgd_interlinks"
    WHERE
      "s" LIKE 'http://linkedgeodata.org/triplify/way%'
;


INSERT
  INTO "lgd_relation_interlinks"("relation_id", "source", "o", "o_local_name")
    SELECT
      substring("s" from 43)::bigint AS "relation_id", "source", "o", "o_local_name"
    FROM
      "lgd_interlinks"
    WHERE
      "s" LIKE 'http://linkedgeodata.org/triplify/relation%'
;

