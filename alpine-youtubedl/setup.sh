#!/bin/sh
set -ex

# Install needed dependencies
apk add --no-cache ca-certificates \
    python3 \
    openssl \
    ffmpeg \

    # Install youtube-dl with pip3
pip3 install youtube-dl

# create downloads directory
mkdir /downloads

