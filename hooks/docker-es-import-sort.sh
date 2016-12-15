#!/bin/bash
PATH="/usr/local/bin:$PATH"
for i in $@ ; do
    skip_file=0
    while read line; do
        if [[ $line = '/* eslint sort-imports:0 */' ]]; then
            skip_file=1
            break
        fi
    done < $i;
    if [[ $skip_file = 1 ]]; then
        continue
    fi
    docker exec ugoodspeed_web_1 ./node_modules/import-sort-cli/lib/index.js -o $i
done;
