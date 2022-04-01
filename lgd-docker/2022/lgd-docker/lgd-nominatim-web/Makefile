SHELL := /bin/bash

.PHONY: all clean

all: target/nominatim.jar target/nominatim-ui.tar.gz

target:
	mkdir -p target

target/nominatim.jar: target ../target/lib/nominatim.jar
	$(MAKE) -C .. target/lib/nominatim.jar
	cp ../target/lib/nominatim.jar target

target/nominatim-ui.tar.gz: | target
	wget -O target/nominatim-ui.tar.gz.tmp https://github.com/osm-search/nominatim-ui/releases/download/v3.2.2/nominatim-ui-3.2.2.tar.gz
	mv target/nominatim-ui.tar.gz.tmp target/nominatim-ui.tar.gz

clean:
	rm -rf target

