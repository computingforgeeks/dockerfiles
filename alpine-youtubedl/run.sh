#!/bin/sh
docker run -it --rm \
    -v $(pwd):/downloads \
    jmutai/youtubedl \
    "$@"

