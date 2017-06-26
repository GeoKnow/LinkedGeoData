SHELL := /bin/bash

.PHONY: all

all: target/.pgpass

target:
	mkdir -p target

target/.pgpass: target ../.env
	source ../.env && echo "$$DB_HOST:$$DB_PORT:$$DB_NAME:$$DB_USER:$$DB_PASS" > target/.pgpass

clean:
	rm -rf target

