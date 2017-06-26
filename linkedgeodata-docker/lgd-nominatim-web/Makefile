SHELL := /bin/bash

.PHONY: all

all: target/local.php

target:
	mkdir -p target

target/local.php: target ../lgd-nominatim-sync/local.php
	cp ../lgd-nominatim-sync/local.php target

clean:
	rm -rf target

