## Welcome to LinkedGeoData: Providing OpenStreetMap data as RDF
LinkedGeoData (LGD) is an effort to add a spatial dimension to the Web of Data / Semantic Web. LinkedGeoData uses the information collected by the OpenStreetMap project and makes it available as an RDF knowledge base according to the Linked Data principles. It interlinks this data with other knowledge bases in the Linking Open Data initiative.

The project web site can be found [here](http://linkedgeodata.org).
If you are running [Ubuntu](http://www.ubuntu.com) then this repository contains everything you need to transform OpenStreetMap data to RDF yourself.
For other systems please consider contributing adaptions of the existing scripts.


### Debian package now available!
Technically, LinkedGeoData is set of SQL files, database-to-rdf (RDB2RDF) mappings, and bash scripts.
The actual RDF conversion is carried out by the SPARQL-to-SQL rewriter [Sparqlify](https://github.com/AKSW/Sparqlify).
You can [view the Sparqlify Mappings for LinkedGeoData here](https://raw.github.com/GeoKnow/LinkedGeoData/master/linkedgeodata-core/src/main/resources/org/aksw/linkedgeodata/sml/LinkedGeoData-Triplify-IndividualViews.sml).
Therefore, if you want to install the LinkedGeoData debian package, you also  Sparqlify one.

For the latest version of LinkedGeoData package, perform the following steps to set up the package source:

Create the file

    /etc/apt/sources.list.d/cstadler.aksw.org.list

and add the content

    deb     http://cstadler.aksw.org/repos/apt precise main contrib non-free

Import the public key with

    wget -O - http://cstadler.aksw.org/repos/apt/conf/packages.precise.gpg.key | apt-key add -


Now you can install

    sudo apt-get install linkedgeodata


Alternatively You can download both packages manually:
* [Sparqlify Debian Package](http://cstadler.aksw.org/repos/apt/pool/main/s/sparqlify/)
* [LinkedGeoData Debian Package](http://cstadler.aksw.org/repos/apt/pool/main/l/linkedgeodata/)


After installing these packages, the following essential commands will be available:
* `lgd-createdb` (provided by linkedgeodata)
* `sparqlify-tool` (provided by sparqlify, supersedes the former lgd-query command)


Read the section on data conversion for their documentation.

### Alternative set up
In [/bin](https://github.com/GeoKnow/LinkedGeoData/tree/master/linkedgeodata-cli/bin) you find the following setup helper scripts which are aimed at easing the LinkedGeoData setup directly from source; without a debian package:

* `lgd-apt-get.sh`: Installs all required system packages using apt-get (postgres, postgis, osmosis, git and maven)

The following scripts are just helpers to build and/or install the Sparqlify debian package. Mainly intended for development.

* `lgd-build-and-install-dependencies.sh`: Builds a Sparqlify debian package from source and installs it.
* `lgd-download-and-install-dependecies.sh`: Simply downloads and installs the latest Sparqlify debian package.


### Do it yourself data conversion
This section describes how to create and query a LinkedGeoData database. After you installed the LinkedGeoData scripts, you need to obtain an OpenStreetMap dataset which you want to load.
Note: Make sure to read the section on database tuning when dealing with larger datasets!

As for obtaining datasets, a very good source for OSM datasets in bite-size chunks is [GeoFabrik](http://download.geofabrik.de). For full dumps, refer to the [planet downloads](http://planet.openstreetmap.org/).

In [/bin](https://github.com/GeoKnow/LinkedGeoData/tree/master/linkedgeodata-cli/bin) you find several scripts. Essentially they are designed to work both from a cloned LinkedGeoData Git repo and wrapped up as a debian package.
All of them are configured via `lgd.conf.dist`. You can override the default settings without changing this file by creating a `lgd.conf` file.
If you installed the debian package, instead of the lgd.conf.dist file, the file /etc/sparqlify/sparqlify.conf` is used.
If you are using the following scripts from the git repo, invoke them with `./scriptname.sh` (i.e. don't forget the `./` and `.sh`).

* `lgd-createdb`: Creates and loads an LGD database
  * -h  postgres host name
  * -d  postgres database name
  * -U  postgres user name
  * -W  postgres password (will be added to ~/.pgpass if not exists)
  * -f  .pbf file to load (other formats currently not supported)

Example:

    wget http://download.geofabrik.de/europe/germany/bremen-latest.osm.pbf
    lgd-createdb -h localhost -d lgd -U postgres -W mypwd -f bremen-latest.osm.pbf

The reason we chose Bremen for the example is simply that it is a small file (around 8MB).


* `sparqlify-tool`: This is a small wrapper for `sparqlify` command that adds a simple profile system for convenience.
  * -P  profile name. Settings will be loaded from such a file (see below) and can be overridden by further options.
  * -h  database host name
  * -d  database name
  * -U  database user name
  * -W  database password (will be added to ~/.pgpass if not exists)
  * -Q  SPARQL query string or named query


Here is an example of a profile file, which is assumed to be located at `/etc/sparqlify/profiles.d/lgd-example.conf`.
This file will be deployed when installing the linkedgeodata debian package.

        dbHost="localhost"
        dbName="lgd"
        dbUser="postgres"
        dbPass="postgres"
        mappingFile="/usr/share/linkedgeodata/sml/lgd-default.sml"


A named query is just a SPARQL query that is referenced by a name.
The mapping of a name to a SPARQL is configured via `/etc/sparqlify/sparqlify.conf`.

Currently, the following named queries exist:

* `ontology`: Creates an N-Triple output with all classes and properties
* `dump`: Create a full dump of the database

Examples:

        sparqlify-tool -P lgd-example ontology
        sparqlify-tool -P lgd-example dump
        sparqlify-tool -h localhost -d lgd -U postgres -W mypwd -Q 'Construct { ?s ?p ?o } { ?s a <http://linkedgeodata.org/ontology/Pub> . ?s ?p ?o }'
        sparqlify-tool -P lgd-example -Q 'Select * { ?s ?p ?o . Filter(?s = <http://linkedgeodata.org/triplify/node2028098486>) }'

Again, note that Sparqlify is still in development and the supported features are a bit limited right now - still, basic graph patterns and equal-constraints should be working fine.


### Postgresql Database Tuning
It is recommended to tune the database according to [these recommendations](http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server). Here is a brief summary:
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
The content of this project are licensed under the [GPL v3 License](https://github.com/GeoKnow/LinkedGeoData/blob/master/LICENSE).

