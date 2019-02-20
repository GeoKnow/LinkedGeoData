## How to use

* First of all, set up [the docker engine](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/) (make sure to select your OS) and [docker-compose](https://docs.docker.com/compose/install/). Our docker setup requires support for docker-compose.yml version 2.1.

* Set up your own evironment configuration. The default settings should be sufficient to get you started.

```
# Note, that '.env' is a hidden file because it stats with a dot
cp env.dist .env
```

* Run the following make command in order to set up docker volumes and network (in the future this step may be combined with the first one). For convenience, there is a `remove-resources` target which will attempt to delete these resources.

```
make create-resources
# make remove-resources
```

* Then, run make in order to initialize the repo. The make script is idempotent, so multiple calls are harmless.

```bash
make
```

* You may want to review and change settings in the [.env](.env) file.
By default, the configuration will load the small monaco dataset and perform subsequent replication.
Database memory parameters are can also be changed in this file.

* Finally, start the services. The `-d` flag instructs all services to run in background (daemon) mode.
Note, the first time this command is called will take several minutes and a good internet connection is recommended.
```
docker-compose up -d
```

## Services
Once all containers are running, the following services will be available:

* Nominatim: [http://localhost:8012](http://localhost:8012)
* Sparql Endpoint: [http://localhost:8013/sparql](http://localhost:8013/sparql)

## Notable quirks

### Nominatim setup
The nominatim tool combines several unrelated tasks into one tool, which as of version 2.5.1, unfortunately does not support remote database setups out of the box.
These tasks are:

* (1) building a 'nominatim.so' shared library against postgres dev files and to be used with postgres
* (2) setting up database
* (3) creating the schema and loading data
* (4) providing the web interface

The following services deal with solving the issues:

* `lgd-build-nominatim` builds the postgres expansion library (nominatim.so) file against the development headers of the eventually live postgres version.
* `lgd-db` builds the live postgres version and bundles the nominatim.so file with it. `lgd-db` and `lgd-build-nominatim` both use ubuntu 16:04 underneath, as this version ships with a more recent version of postgres (v9.5).
* `lgd-nominatim-sync` is a container capable of initializing the `lgd-db` with a specified dataset and then starting the replication process to keep the nominatim data up-to-date. As nominatim does not yet work with PHP7, ubuntu 14.04 (which in turn only ships with postgres 9.3)
* `lgd-nominatim-web` provides the web site. Like `lgd-nominatim-sync` it uses ubuntu 14.04 as a base.

