/**
 * Views for the pgsnapshot schema for {node, way, relation}_tags.
 * Only useful for dumps as selections will always(?) result in scans.
 *
 */
CREATE OR REPLACE VIEW node_tags AS SELECT a.id node_id, (each(a.tags)).key k, (each(a.tags)).value v FROM nodes a;
CREATE OR REPLACE VIEW way_tags AS SELECT a.id way_id, (each(a.tags)).key k, (each(a.tags)).value v FROM ways a;
CREATE OR REPLACE VIEW relation_tags AS SELECT a.id relation_id, (each(a.tags)).key k, (each(a.tags)).value v FROM relations a;
