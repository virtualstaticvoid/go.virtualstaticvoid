GHUSER:=virtualstaticvoid
CNAME:=$(shell cat CNAME)
PACKAGES:=$(shell cat packages)

# default target
all::

all:: build
.PHONY: all

.PHONY: build
build: $(PACKAGES)

$(PACKAGES):
	@echo $@
	@sed 's/GHUSER/$(GHUSER)/g;s/CNAME/$(CNAME)/g;s/PACKAGE_NAME/$@/g' _template.html > $@.html
