#!/bin/bash
set -e
cd git-repo

envsubst < ~/.npmrc > ~/.npmrc.tmp && mv  ~/.npmrc.tmp ~/.npmrc
npm install && npm pack && npm run publish:next
