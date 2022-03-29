# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): $(SUBDIRS)

# Invoke 'make' on every subfolder that contains a Makefile (and is not called 'target')
$(SUBDIRS):
	@if [ -f "$@/Makefile" ] && [ "$@" != 'target/.' ]; then $(MAKE) -C "$@" $(MAKECMDGOALS) ; fi

.PHONY: $(TOPTARGETS) $(SUBDIRS)

.ONESHELL:
all: target/linkedgeodata.deb ## Recursively prepare all resources (using builds and downloads) needed to build the docker images


clean: ## Remove all files under 'target'
	rm -rf target

target/linkedgeodata.deb: pom.xml ## Build the LGD debian package used by the sync containers from this lgd's java code
	mvn -Pdeb clean install
	file=`find lgd-pkg-parent -name 'linkedgeodata_*.deb'`
	mkdir -p target
	cp "$$file" target/linkedgeodata.deb # use ln -s ?

# Ugliness: We should not depend on the existence of the target folder in the rule below:
# We should touch a file if the artifact already is in the local m2 repo
lgd-thirdparty/nominatim/lgd-pkg-nominatim-4.0.1/target: ## Bundle nominatim up as a jar and cache it in the local m2 repo
	cd lgd-thirdparty/nominatim/lgd-pkg-nominatim-4.0.1
	mvn clean install

help:  ## Show these help instructions
	@sed -rn 's/^([a-zA-Z0-9_./| -]+):.*?## (.*)$$/"\1" "\2"/p' < $(MAKEFILE_LIST) | xargs printf "make %-30s # %s\n"

