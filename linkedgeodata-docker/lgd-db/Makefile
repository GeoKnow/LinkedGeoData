SHELL := /bin/bash

.PHONY: all build clean

# We need to build the nominatim.so file
all: build

build: Dockerfile target/nominatim.so target/postgresql.conf
	docker build -t lgd-nominatim .	

target:
	mkdir -p target

target/nominatim.so: target ../lgd-build-nominatim/Dockerfile
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/nominatim.so target

target/postgresql.conf: target etc/postgresql/9.5/main/postgresql.conf
	source ../.env && cat etc/postgresql/9.5/main/postgresql.conf | envsubst > target/postgresql.conf

clean:
	rm -rf target

