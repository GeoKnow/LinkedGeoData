## Welcome to LinkedGeoData: Providing OpenStreetMap data as RDF
LinkedGeoData (LGD) is an effort to add a spatial dimension to the Web of Data / Semantic Web. LinkedGeoData uses the information collected by the OpenStreetMap project and makes it available as an RDF knowledge base according to the Linked Data principles. It interlinks this data with other knowledge bases in the Linking Open Data initiative.

The project web site can be found [here](http://linkedgeodata.org).

### Do it yourself data conversion
If you are running [Ubuntu](http://www.ubuntu.com) then this repository contains everything you need to transform OpenStreetMap data to RDF yourself. Make sure to read the section on database tuning when dealing with larger datasets.
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

Again, note that Sparqlify is still in development and the supported features are a bit limited right now - still, basic graph patterns and equal-constraints should be working fine.


### Postgresql Database Tuning
It is recommended to tune the database according to [http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server](these recommendations). Here is a brief summary:
Edit `/etc/postgresql/9.1/main/postgresql.conf` and set the following properties:

    shared_buffers       = 2GB #recommended values between 25% - 40% of available RAM, setting assumes 8GB RAM
    effective_cache_size = 4GB #recommended values between 50% - 75% of available RAM, setting assumes 8GB RAM
    checkpoint_segments  = 256
    checkpoint_completion_target = 0.9
    autovacuum = off # This can be re-enabled once loading has completed

    work_mem             = 256MB (This memory is used for sorting, so each user may use this amount of memory for his sorts; You may want to use a significantly lower value if there are many connections doing sorts)
    maintainance_work_mem = 256MB


Furthermore, allow more shared memory, otherwise postgres won't start:
Append the following line to `/etc/sysctl.conf`:

    #Use more shared memory max
    kernel.shmmax=4294967296

    # Note: The amount (specified in bytes) for kernel.shmmax must be greater than the shared_buffers settings obove
    #4GB = 4294967296
    #8GB = 8589934592

Make the changes take effect:

    sudo sysctl -p
    sudo service postgresql restart

## License
Will be clarified shortly.



