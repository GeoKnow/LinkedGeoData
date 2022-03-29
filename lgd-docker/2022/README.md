


## Project layout

This project requires Make and Apache Maven to build (Java 11+ required).
Maven builds are not dockerized. Therefore any built artifacts will be cached in the local repository as usual.

### Primary resources
They include the SQL files and mappings that enable rewriting SPARQL queries to SQL ones over an OpenStreetMap (and Nominatim) database.
Furthermore, bash scripts are avaiable for helping setting up an LGD database.
The mavenization and dockerization re-package these resources.

The following folders contain resources that are copied when building the `lgd-tools-resources` jar bundle
* [sql](sql) SQL scripts for extending on OSM simple schema database
* [sml](sml) The mapping files in SML format. Convert to e.g. r2rml using the mapping converter.

The scripts in the bin folder become part of the debian packaging of the cli tools `lgd-tools-pkg-deb-cli`
* [bin](bin) Bash scripts for setting LinkedGeoData up (Ubuntu)


### Thirdparty resources

There is a pom.xml that creates a jar file from a snapshot of the nominatim git.
Especially for development this is much faster than repeated clones of the full git repo.


Modules under lgd-pkg-parent lgd-pkg-\* are packaging setups independent of the parent pom.xml!


