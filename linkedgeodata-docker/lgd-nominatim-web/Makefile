SHELL := /bin/bash

.PHONY: all

all: target/local.php

target:
	mkdir -p target

target/local.php: target ../lgd-nominatim-sync/local.php.dist
	cp ../lgd-nominatim-sync/local.php.dist target

clean:
	rm -rf target

