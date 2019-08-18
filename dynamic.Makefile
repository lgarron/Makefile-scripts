# This Makefile is a wrapper around the scripts from `package.json`.
# https://github.com/lgarron/Makefile-scripts

# Note: the first command becomes the default `make` target.
DYNAMIC_NPM_COMMANDS = $(shell cat package.json | npx jq --raw-output ".scripts | keys_unsorted | join(\" \")")

.PHONY: $(DYNAMIC_NPM_COMMANDS)
$(DYNAMIC_NPM_COMMANDS):
	npm run $@
