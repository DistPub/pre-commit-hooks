#!/bin/bash
PATH="/usr/local/bin:$PATH"
docker exec ugoodspeed_web_1 ./node_modules/.bin/eslint $@
