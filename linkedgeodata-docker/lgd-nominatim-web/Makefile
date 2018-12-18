SHELL := /bin/bash

.PHONY: all

all: target/local.php target/nominatim.jar

target:
	mkdir -p target

target/nominatim.jar: target ../target/lib/nominatim.jar
	$(MAKE) -C .. target/lib/nominatim.jar
	cp ../target/lib/nominatim.jar target

target/local.php: target ../lgd-nominatim-sync/local.php.dist
	cp ../lgd-nominatim-sync/local.php.dist target

clean:
	rm -rf target

