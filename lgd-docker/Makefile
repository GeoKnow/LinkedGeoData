# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): $(SUBDIRS)

# Invoke 'make' on every subfolder that contains a Makefile (and is not called 'target')
$(SUBDIRS):
	@if [ -f "$@/Makefile" ] && [ "$@" != 'target/.' ]; then $(MAKE) -C "$@" $(MAKECMDGOALS) ; fi

.PHONY: $(TOPTARGETS) $(SUBDIRS)

all:

