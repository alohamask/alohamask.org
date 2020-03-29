# Runs a local hugo server for development.

#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace

hugo server --source alohamask.org
