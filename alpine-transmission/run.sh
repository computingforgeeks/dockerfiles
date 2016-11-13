#!/usr/bin/env bash
 mkdir -p  ~/Torrents/
 mkdir -p  ~/Torrents/downloads
 mkdir -p ~/Torrents/incomplete


docker run -d --name transmission \
-p 9091:9091 \
-p 51413:51413/tcp \
-p 51413:51413/udp \
-v /home/$USER/Torrents/downloads:/transmission/downloads \
-v /home/$USER/Torrents/incomplete:/transmission/incomplete \
-v /home/$USER/Downloads:/transmission/watch \
-e "USERNAME=admin" \
-e "PASSWORD=password" \
transmission "$@" 
