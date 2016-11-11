#!/bin/bash
PATH="/usr/local/bin:$PATH"
for i in $@ ; do
  docker exec ugoodspeed_web_1 ./node_modules/import-sort-cli/lib/index.js -o $i
done;
