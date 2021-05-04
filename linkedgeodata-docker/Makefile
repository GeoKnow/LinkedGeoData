# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): target/lib/nominatim.jar $(SUBDIRS)

# Invoke 'make' on every subfolder that contains a Makefile (and is not called 'target')
$(SUBDIRS):
	@if [ -f "$@/Makefile" ] && [ "$@" != 'target/.' ]; then $(MAKE) -C "$@" $(MAKECMDGOALS) ; fi

.PHONY: $(TOPTARGETS) $(SUBDIRS)

#all: .env

.env: env.dist
	cp -n env.dist .env

# We bundled nominatim as a maven artifact so we can download it by exploiting maven's repository infrastructure
.ONESHELL:
target/lib/nominatim.jar: pom.xml
	mvn install
	cd target/lib
	rm -f nominatim.jar
	ln -s `find -name 'linkedgeodata-nominatim-core-*.jar'` nominatim.jar

create-resources: .env
	docker network create lgd-net ; true
	docker volume create lgd-db-vol ; true
	docker volume create lgd-osm-sync-vol ; true
	docker volume create lgd-nominatim-sync-vol ; true

remove-resources:
	docker network rm lgd-net ; true
	docker volume rm lgd-db-vol ; true
	docker volume rm lgd-osm-sync-vol ; true
	docker volume rm lgd-nominatim-sync-vol ; true

