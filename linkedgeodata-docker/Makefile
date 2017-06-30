# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C "$@" $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)


create-resources:
	docker network create lgd-net ; true
	docker volume create lgd-db-vol ; true
	docker volume create lgd-osm-sync-vol ; true
	docker volume create lgd-nominatim-sync-vol ; true

remove-resources:
	docker network rm lgd-net ; true
	docker volume rm lgd-db-vol ; true
	docker volume rm lgd-osm-sync-vol ; true
	dockre volume rm lgd-nominatim-sync-vol ; true


