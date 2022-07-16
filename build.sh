#!/bin/bash
set -eo pipefail

# cd to parent dir of current script
cd "$(dirname "${BASH_SOURCE[0]}")"

set -x

make test
make build

stat ./execs/k9s
realpath ./execs/k9s
