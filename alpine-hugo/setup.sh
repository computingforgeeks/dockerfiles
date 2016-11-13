#!/usr/bin/env sh
set -eux

version=0.17

# Install packages
apk add --no-cache wget \
    ca-certificates \
   py-pygments \

# Download and install hugo
wget -O - https://github.com/spf13/hugo/releases/download/v"$version"/hugo_"$version"_Linux-64bit.tar.gz | tar zxv -C /tmp
mv /tmp/hugo_"$version"_linux_amd64/hugo_"$version"_linux_amd64 /usr/local/bin/hugo

# Remove wget and ca-certificates to maintain small docker image
apk del  wget ca-certificates

# Create working dir mapped to host
mkdir -m 1777 /web

echo "Complete"
