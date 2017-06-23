.PHONY: all build clean

# We need to build the nominatim.so file
all: build

build: Dockerfile target/nominatim.so
	docker build -t lgd-nominatim .	

target:
	mkdir -p target

target/nominatim.so: target
	$(MAKE) -C ../lgd-build-nominatim
	cp ../lgd-build-nominatim/target/nominatim.so target

clean:
	rm -rf target

