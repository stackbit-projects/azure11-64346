#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://develop.widget.stackbit.com/init.js 5fc643463157050015b07cb7

echo "stackbit-build.sh: finished build"
