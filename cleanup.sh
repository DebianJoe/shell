#!/bin/bash

rm -i `find ./ -name '*~' -or -name ".*~"`
rm -i `find ./ -name \`date +%Y\`*`
