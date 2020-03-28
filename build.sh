#!/usr/bin/env bash

DIST=dist.$(date +%s).tar.bz2

cd alohamask.org           && \
    rm -rf public          && \
    hugo -D                && \
    tar cjf ${DIST} public && \
    cd ..                  && \
    mkdir -p build         && \
    mv alohamask.org/${DIST} build/.
