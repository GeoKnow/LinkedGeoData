.PHONY: all docker-build

all: target/nominatim.so target/osm2pgsql target/nominatim

target:
	mkdir -p target

docker-build: Dockerfile
	docker build -t lgd-nominatim-build .

target/nominatim.so: target docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/module/nominatim.so > target/nominatim.so

target/osm2pgsql: target docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/osm2pgsql/osm2pgsql > target/osm2pgsql

target/nominatim: target docker-build
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/nominatim/nominatim > target/nominatim

clean:
	rm -rf target

