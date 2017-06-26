.PHONY: all

all: target/nominatim.so

target:
	mkdir -p target

target/nominatim.so: target Dockerfile
	docker build -t lgd-nominatim-build .
	docker run --rm --entrypoint cat lgd-nominatim-build /app/nominatim/src/module/nominatim.so > target/nominatim.so

clean:
	rm -rf target

