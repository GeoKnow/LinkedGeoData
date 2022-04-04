.PHONY: all

all: target/nominatim.jar target/nominatim.so target/osm2pgsql target/nominatim

target:
	mkdir -p target

target/nominatim.jar: target ../target/lib/nominatim.jar
	$(MAKE) -C .. target/lib/nominatim.jar
	cp ../target/lib/nominatim.jar target

.ONESHELL:
target/delete-me-to-unsuppress-docker-build: target Dockerfile
	docker build -t lgd-nominatim-build .
	touch target/delete-me-to-unsuppress-docker-build

target/nominatim.so: target/delete-me-to-unsuppress-docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/module/nominatim.so > target/nominatim.so

target/osm2pgsql: target/delete-me-to-unsuppress-docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/osm2pgsql/osm2pgsql > target/osm2pgsql

target/nominatim: target/delete-me-to-unsuppress-docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/nominatim/nominatim > target/nominatim

clean:
	rm -rf target

