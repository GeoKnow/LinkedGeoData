SHELL := /bin/bash

.PHONY: all clean

all: target/linkedgeodata.deb


target:
	mkdir -p target

target/linkedgeodata.deb: | target ## Setup the lgd tools debian package
	$(MAKE) -C ../.. target/linkedgeodata.deb
	cp ../../target/linkedgeodata.deb target
	
clean:
	rm -rf target


