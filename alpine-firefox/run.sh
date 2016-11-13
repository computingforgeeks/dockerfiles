#!/bin/sh
set -ex
xhost +
docker run -d \
    --memory 2gb \
    --cpuset-cpus 0 \
    --net host \
    -e DISPLAY=$DISPLAY \
    -h $(hostname) \
    --device /dev/snd \
    --device /dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.mozilla:$HOME/.mozilla \
    -v $HOME/Downloads:$HOME/Downloads \
    -v $HOME/Documents:$HOME/Documents \
    -v /etc/machine-id:/etc/machine-id:ro \
    jmutai/firefox firefox


