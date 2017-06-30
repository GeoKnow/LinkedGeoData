SHELL := /bin/bash

.PHONY: all

all: target/.pgpass target/nominatim target/osm2pgsql target/nominatim.so

target:
	mkdir -p target

target/.pgpass: target ../.env
	source ../.env && echo "$$DB_HOST:$$DB_PORT:$$DB_NAME:$$DB_USER:$$DB_PASS" > target/.pgpass

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

