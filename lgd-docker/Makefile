# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): target/lib/nominatim.jar $(SUBDIRS)

# Invoke 'make' on every subfolder that contains a Makefile (and is not called 'target')
$(SUBDIRS):
	@if [ -f "$@/Makefile" ] && [ "$@" != 'target/.' ]; then $(MAKE) -C "$@" $(MAKECMDGOALS) ; fi

.PHONY: $(TOPTARGETS) $(SUBDIRS)

all: .env target/lib/nominatim.jar


.env: env.dist
	cp -n env.dist .env

