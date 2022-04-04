SHELL := /bin/bash

.PHONY: all clean

all: target/nominatim.jar target/nominatim target/osm2pgsql target/nominatim.so

target:
	mkdir -p target

target/nominatim.jar: target ../target/lib/nominatim.jar
	$(MAKE) -C .. target/lib/nominatim.jar
	cp ../target/lib/nominatim.jar target

# Note: The nominatim setup.php script requires the existence of the nominatim.so module.
target/nominatim.so: target ../lgd-build-nominatim/Dockerfile
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/nominatim.so target

target/nominatim: target ../lgd-build-nominatim/Dockerfile
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/nominatim target

target/osm2pgsql: target ../lgd-build-nominatim/Dockerfile
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/osm2pgsql target

clean:
	rm -rf target

