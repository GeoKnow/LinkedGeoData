Create View lgd_nodes_geometry As
    Construct {
        ?n geom:geometry ?g .

        ?g a geom:Geometry .
        ?g ogc:asWKT ?o .
    }
    With
        ?n = uri(concat(lgd:node, ?id))
        ?g = uri(concat(lgd-geom:node, ?id))
        ?o = typedLiteral(?geom, ogc:wktLiteral)
    From
        [[SELECT * FROM nodes a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'N' AND b.osm_id = a.id)]];

Create View lgd_ways_geometry As
    Construct {
        ?n geom:geometry ?g .

        ?g a geom:Geometry .
        ?g ogc:asWKT ?o .
    }
    With
        ?n = uri(concat(lgd:way, ?id))
        ?g = uri(concat(lgd-geom:way, ?id))
        ?o = typedLiteral(?geom, ogc:wktLiteral)
    From
        [[SELECT * FROM ways a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'W' AND b.osm_id = a.id)]];

Create View lgd_relations_geometry As
    Construct {
        ?n geom:geometry ?g .

        ?g a geom:Geometry .
        ?g ogc:asWKT ?o .
    }
    With
        ?n = uri(concat(lgd:relation, ?id))
        ?g = uri(concat(lgd-geom:relation, ?id))
        ?o = typedLiteral(?geom, ogc:wktLiteral)
    From
        [[SELECT * FROM relations a WHERE NOT EXISTS (SELECT osm_id FROM placex b WHERE b.osm_type = 'R' AND b.osm_id = a.id)]];


