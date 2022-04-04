SHELL := /bin/bash

.PHONY: all clean

# We need to build the nominatim.so file
all: target/nominatim.so target/postgresql.conf

target:
	mkdir -p target

target/nominatim.so: target ../lgd-build-nominatim/Dockerfile
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/nominatim.so target

target/postgresql.conf: target etc/postgresql/9.5/main/postgresql.conf.dist
	source ../.env && cat etc/postgresql/9.5/main/postgresql.conf.dist | envsubst > target/postgresql.conf

clean:
	rm -rf target

