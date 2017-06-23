# Generic Makefile which calls make on every sub-directory
TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C "$@" $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

