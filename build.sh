#!/usr/bin/env bash
set -e
node_modules/rimraf/bin.js dist
node_modules/ng2-inline-template/bin/ng2inline --outDir=dist "src/**/*.ts"
node_modules/typescript/bin/tsc --rootDir dist
#  ------ optionally, with globally installed modules
# rimraf dist
# ng2line "src/**/*.ts"
# tsc --rootDir dist
