---
layout: default
title: RDF Mapping
nav_order: 4
---

## RDF Mapping Description

The approach of Linked Geo Data is to store the mapping information in a relational database (Post GIS) together with the OSM data, and use *Ontology-based Data Access (OBDA)* tooling for generating the RDF.

The [LinkedGeoData SQL Scripts](https://github.com/GeoKnow/LinkedGeoData/tree/master/linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sql) extend a [simple schema flavoured](http://wiki.openstreetmap.org/wiki/Osmosis/Detailed_Usage_0.43#PostGIS_Tasks_.28Simple_Schema.29) OSM data with additional indexes, tables and views.
Note, that these extensions are designed to be 100% compatible with Osmosis replication (aka live-sync) features.

The following [Mapping Tables](https://github.com/GeoKnow/LinkedGeoData/blob/master/linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sql/Mappings.sql) are used to relate the OSM tags to corresponding RDF resources:

* `lgd_map_datatype(k, datatype)`: Values of the given keys should be interpreted as members of a certain datatype (boolean, int or float).
* `lgd_map_literal (k, property, language)`: Values of the given keys are treated as plain literals having the specified language tag.
* `lgd_map_resource_k (k, property, object)`: The presence of a key yields triples with the given property and object.
* `lgd_map_resource_kv (k, v, property, object)`: Similar to above, except that the value is also taken into account.
* `lgd_map_property (k, property)`: Relates keys to corresponding properties.

The [LinkedGeoData RDB2RDF Mapping](https://github.com/GeoKnow/LinkedGeoData/blob/master/linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml) is then used to map the relational OSM database to RDF.

