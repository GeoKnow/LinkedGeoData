.PHONY: all

.ONESHELL:
all: target/nominatim.so target/osm2pgsql

target:
	mkdir -p target

target/nominatim.jar: ../target/lib/nominatim.jar | target
	$(MAKE) -C .. target/lib/nominatim.jar
	cp ../target/lib/nominatim.jar target

target/delete-me-to-unsuppress-docker-build: target/nominatim.jar target/country_osm_grid.sql.gz Dockerfile | target
	docker build -t lgd-nominatim-build .
	touch target/delete-me-to-unsuppress-docker-build

target/country_osm_grid.sql.gz: | target
	wget -O target/country_osm_grid.sql.gz.tmp https://www.nominatim.org/data/country_grid.sql.gz
	mv target/country_osm_grid.sql.gz.tmp target/country_osm_grid.sql.gz

target/nominatim.so: target/delete-me-to-unsuppress-docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/module/nominatim.so > target/nominatim.so

target/osm2pgsql: target/delete-me-to-unsuppress-docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/osm2pgsql/osm2pgsql > target/osm2pgsql

#target/nominatim: target/delete-me-to-unsuppress-docker-build
#	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/nominatim/nominatim > target/nominatim

clean:
	rm -rf target

