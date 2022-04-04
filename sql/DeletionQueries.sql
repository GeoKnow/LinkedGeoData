DELETE FROM relations x WHERE
    NOT x.id IN (
        SELECT rt.relation_id FROM relation_tags rt WHERE rt.k IN ('amenity')
   );

DELETE FROM relation_tags x WHERE
    NOT x.relation_id IN (
        SELECT r.id FROM relations r
    );

DELETE FROM relation_members x WHERE
    NOT x.relation_id IN (
        SELECT r.id FROM relations r
    );

DELETE FROM ways x WHERE
    NOT x.id IN (
        SELECT wt.way_id FROM way_tags wt WHERE wt.k IN ('amenity') UNION ALL
        SELECT rm.member_id FROM relation_members rm WHERE member_type = 'W'
   );

DELETE FROM way_tags x WHERE
    NOT x.way_id IN (
        SELECT w.id FROM ways w
    );

DELETE FROM way_nodes x WHERE
    NOT x.way_id IN (
        SELECT w.id FROM ways w
    );

DELETE FROM nodes n WHERE
    NOT n.id IN (
        SELECT nt.node_id FROM node_tags nt WHERE nt.k IN ('amenity') UNION ALL
        SELECT wn.node_id FROM way_nodes wn UNION ALL
        SELECT rm.member_id FROM relation_members rm WHERE rm.member_type = 'N'
    );

DELETE FROM node_tags x WHERE
    NOT x.node_id IN (
        SELECT n.id FROM nodes n
    );
