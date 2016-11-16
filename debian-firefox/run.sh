#!/bin/sh
set -ex
xhost +
docker run -d \
    --memory 2gb \
    --cpuset-cpus 0 \
    --net host \
    -e uid=$(id -u) \
    -e gid=$(id -g) \
    -e DISPLAY=$DISPLAY \
    --tmpfs /tmp \
    -h firefox \
    -d /dev/snd:/dev/snd \
    -d /dev/dri:/dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.mozilla:$HOME/.mozilla \
    -v $HOME/Downloads:$HOME/Downloads \
    -v $HOME/Documents:$HOME/Documents \
    -v /etc/machine-id:/etc/machine-id:ro \
    jmutai/firefox firefox

