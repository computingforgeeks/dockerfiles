#!/bin/bash
# docker pull hurricane/teamviewer
 teamv () {
     xhost +
     docker run -it --name teamviewer \
         -v /tmp/.X11-unix:/tmp/.X11-unix \
         -e DISPLAY=$DISPLAY \
         jmutai/teamviewer
 }
                 ~      
