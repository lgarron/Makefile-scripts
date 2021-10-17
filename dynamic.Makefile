# This Makefile is a wrapper around the scripts from `package.json`.
# https://github.com/lgarron/Makefile-scripts

# Note: the first command becomes the default `make` target.
DYNAMIC_NPM_COMMANDS = $(shell node -e 'console.log(Object.keys(require("./package.json").scripts).join(" "))')

.PHONY: $(DYNAMIC_NPM_COMMANDS)
$(DYNAMIC_NPM_COMMANDS):
	npm run $@
