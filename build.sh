# This build script performs several actions
# 1. Compiles the static site to alohamask.org/alohamask.org/public/*
# 2. Moves the compiled site to alohamask.org/build/public/*
# 3. Creates a compressed .bz2 file of the static site contents and places it in alohamask.org/build/

#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace

DIST="dist.$(date +%s).tar.bz2"                         # Name of compressed distribution with second timestamp
SOURCE_ROOT="alohamask.org"                             # Location of static site root relative to base dir
BUILD_ROOT="build"                                      # Location of generated products

rm -rf ${SOURCE_ROOT}/public                            # Clean up any previous compiles
rm -rf ${BUILD_ROOT}/public                             # Clean up any previous compiles
mkdir -p ${BUILD_ROOT}                                  # Ensure build dir exists
hugo --source ${SOURCE_ROOT}                            # Compile the static site
mv ${SOURCE_ROOT}/public ${BUILD_ROOT}/public           # Move the content to the build directory
tar cjvf ${BUILD_ROOT}/${DIST} -C ${BUILD_ROOT} public  # Compress the compiled static site

