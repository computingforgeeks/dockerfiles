#!/bin/sh
apt -y update
apt-get install -y --no-install-recommends \
    fonts-dejavu \
    dirmngr \
    gnupg \
    libasound2 \
    libgl1-mesa-dri \
    libgl1-mesa-glx \

# Add firefox apt repo and key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0AB215679C571D1C8325275B9BDB3D89CE49EC21 
echo "deb http://ppa.launchpad.net/mozillateam/firefox-next/ubuntu wily main" >> /etc/apt/sources.list.d/firefox.list

# Install firefix
apt-get update
apt-get install -y --no-install-recommends \
    firefox \
    hicolor-icon-theme \

# Install pepper flsh player
echo "deb http://http.debian.net/debian jessie-backports main contrib" /etc/apt/sources.list
apt-get -y update
apt-get -y install --no-install-recommends  \
    pepperflashplugin-nonfree \
    browser-plugin-freshplayer-pepperflash

# Clean apt cache 
rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/apt/*

