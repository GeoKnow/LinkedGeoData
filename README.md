## Welcome to LinkedGeoData: Providing OpenStreetMap data as RDF
LinkedGeoData (LGD) is an effort to add a spatial dimension to the Web of Data / Semantic Web. LinkedGeoData uses the information collected by the OpenStreetMap project and makes it available as an RDF knowledge base according to the Linked Data principles. It interlinks this data with other knowledge bases in the Linking Open Data initiative.

The project web site can be found [here](http://linkedgeodata.org).

### Do it yourself data conversion
If you are running [Ubuntu](http://www.ubuntu.com) then this repository contains everything you need to transform OpenStreetMap data to RDF yourself.
For other systems please consider contributing adaptions of the existing scripts.

As for obtaining datasets, a very good source for OSM datasets in bite-size chunks is [GeoFabrik](http://download.geofabrik.de). For full dumps, refer to the [planet downloads](http://planet.openstreetmap.org/). Note that currently only .pbf files are supported.

In [/bin](https://github.com/GeoKnow/LinkedGeoData/tree/master/bin) you find several scripts.
All of them are configured via `config.ini.dist`. You can override the default settings without changing this file by creating a `config.ini` file.


* `install-lgd-ubuntu.sh`: Installs all required system packages (postgres, postgis, osmosis, git and maven)


* `createdb-lgd.sh`: Creates and loads a LGD database
  * -h  postgres host name
  * -d  postgres database name
  * -u  postgres user name
  * -p  postgres password (will be added to ~/.pgpass if not exists)
  * -f  .pbf file to load (other formats currently not supported)

Example:

    wget http://download.geofabrik.de/europe/germany/bremen-latest.osm.pbf
    `./createdb-lgd.sh -h localhost -d lgd -u postgres -p mypwd -f bremen-latest.osm.pbf

The reason we chose Bremen for the example is simply that it is a small file (around 8MB).


* `install-sparqlify.sh`: This script installs [Sparqlify](https://github.com/AKSW/Sparqlify), the SPARQL-to-SQL rewriter that carries out the RDF generation, into the current directory (should be `./bin`). Note that Sparqlify is still in development and at the moment the installation script checks Sparqlify out from git and builds it using maven.
With the next Sparqlify release we will switch to the debian package that becomes part of the [LOD2 stack](http://stack.lod2.eu/).


* `run-dump-lgd.sh`: Creates a full dump in N-triples format from the specified LGD database.
  * -h  postgres host name
  * -d  postgres database name
  * -u  postgres user name
  * -p  postgres password (will be added to ~/.pgpass if not exists)


* `run-dump-lgd.sh`: Run a SPARQL query on the database.
  * -h  postgres host name
  * -d  postgres database name
  * -u  postgres user name
  * -p  postgres password (will be added to ~/.pgpass if not exists)
  * -Q  SPARQL query string

Examples:

    ./run-query-lgd.sh -h localhost -d lgd -u postgres -p mypwd -Q 'Construct { ?s ?p ?o } { ?s a <http://linkedgeodata.org/ontology/Pub> . ?s ?p ?o }'
    ./run-query-lgd.sh -Q 'Select * { ?s ?p ?o . Filter(?s = <http://linkedgeodata.org/triplify/node2028098486>) }'

Again, note that Sparqlify is still in development and the supported features are a bit limited right now - still graph patterns and filters using equals constraint should be working fine.


## License
Will be clarified shortly.



