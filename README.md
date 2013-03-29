## Welcome to LinkedGeoData: Providing OpenStreetMap data as RDF
LinkedGeoData (LGD) is an effort to add a spatial dimension to the Web of Data / Semantic Web. LinkedGeoData uses the information collected by the OpenStreetMap project and makes it available as an RDF knowledge base according to the Linked Data principles. It interlinks this data with other knowledge bases in the Linking Open Data initiative.

The project web site can be found [here](http://linkedgeodata.org).

### Do it yourself data conversion
If you are running [Ubuntu](http://www.ubuntu.com) then this repository contains everything you need to transform OpenStreetMap data to RDF.
For other systems please consider contributing adaptions of the existing scripts.

In [/bin](https://github.com/GeoKnow/LinkedGeoData/tree/master/bin) you find several following scripts.
All of them are configured via `config.ini.dist`. You can override the default settings without changing this file by creating a `config.ini` file.


* `install-lgd-ubuntu.sh`:
  * Overview:
    * Installs all required system packages (postgres, postgis and osmosis)
    * Creates a LGD database
    * Loads an OpenStreetMap .pbf file into the database
    * Applies schema extension for LGD
    * Loads the specified LGD datasets
  * Command line options:
    * -h  postgres host name
    * -d  postgres database name
    * -u  postgres user name
    * -p  postgres password (will be added to ~/.pgpass if not exists)
    * -f  .pbf file to load (other formats currently not supported)




