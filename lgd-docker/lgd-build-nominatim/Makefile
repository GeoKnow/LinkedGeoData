.PHONY: all help

NOMINATIM_VERSION=4.0.1
NOMINATIM_IMG=lgd-build-nominatim:$(NOMINATIM_VERSION)

.ONESHELL:
all: target/nominatim.so target/osm2pgsql target/nominatim ## Build all target artifacts using a docker container

target: ## Create the target directory for artifacts
	mkdir -p target

target/nominatim.jar: | target ## Setup the nominatim bundle using a goal in the parent makefile
	mvn dependency:copy -D"artifact=org.aksw.linkedgeodata:lgd-pkg-nominatim:$(NOMINATIM_VERSION)" -DoutputDirectory=target
	mv "lgd-pkg-nominatim-$(NOMINATIM_VERSION).jar" target/nominatim.jar

target/linkedgeodata.deb: | target ## Prepare the lgd deb package
	$(MAKE) -C ../.. target/linkedgeodata.deb
	mv ../../target/linkedgeodata.deb target/

target/delete-me-to-unsuppress-docker-build: Dockerfile target/nominatim.jar target/country_osm_grid.sql.gz target/linkedgeodata.deb | target ## (Re-)build the docker image on modification of certain resources
	docker build -t $(NOMINATIM_IMG) .
	touch target/delete-me-to-unsuppress-docker-build

target/country_osm_grid.sql.gz: | target ## Download of auxiliary data needed by nominatim
	wget -O target/country_osm_grid.sql.gz.tmp https://www.nominatim.org/data/country_grid.sql.gz
	mv target/country_osm_grid.sql.gz.tmp target/country_osm_grid.sql.gz

target/nominatim.so: target/delete-me-to-unsuppress-docker-build ## Build the nominatim shared library for use with postgresql
	docker run --rm --entrypoint cat $(NOMINATIM_IMG) /lgd/nominatim/module/nominatim.so > target/nominatim.so

target/osm2pgsql: target/delete-me-to-unsuppress-docker-build ## Build osm2pgsql
	docker run --rm --entrypoint cat $(NOMINATIM_IMG) /lgd/nominatim/osm2pgsql/osm2pgsql > target/osm2pgsql

target/nominatim: target/delete-me-to-unsuppress-docker-build ## Build the nominatim executable
	docker run --rm --entrypoint cat $(NOMINATIM_IMG) /lgd/nominatim/nominatim > target/nominatim

clean: ## Delete the target folder and its contained artifacts
	rm -rf target

help:  ## Show these help instructions
	@sed -rn 's/^([a-zA-Z_./| -]+):.*?## (.*)$$/"\1" "\2"/p' < $(MAKEFILE_LIST) | xargs printf "make %-30s # %s\n"


