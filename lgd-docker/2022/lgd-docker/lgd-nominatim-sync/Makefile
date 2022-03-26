SHELL := /bin/bash

.PHONY: all clean

all: target/lgd-tools.deb


target:
	mkdir -p target

target/lgd-tools.deb: | target ## Setup the lgd tools debian package
	$(MAKE) -C ../.. target/lgd-tools.deb
	cp ../../target/lgd-tools.deb target
	
clean:
	rm -rf target


