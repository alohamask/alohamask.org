# Clean up build files

#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace

rm -rf build                # Remove build files and distributions
rm -rf alohamask.org/public # Remove build files
