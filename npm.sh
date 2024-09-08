#!/bin/bash

# Install pure (https://github.com/sindresorhus/pure)
npm i -g pure-prompt

# Util for automatic version bumping
# Example: bump patch && git add . && git commit -m "Bump version to $(cat ./package.json | jq -r .version)";
npm i -g version-bump-prompt