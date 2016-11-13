#!/bin/sh
xhost + &>/dev/null 
docker run -it \
    -p 9001:9001 \
    -v ~/.weechat:$HOME \
    jmutai/weechat
