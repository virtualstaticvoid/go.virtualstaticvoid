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
	@sed 's/CNAME/$(CNAME)/g;s/PACKAGE_NAME/$@/g' _template.html > $@.html
