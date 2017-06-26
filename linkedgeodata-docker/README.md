## How to use
Before doing any docker related stuff, run make in order to initialize the repo.
The make script is idempotent, so multiple calls are harmless.

```bash
make
```


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

