#!/bin/bash

#cd ~/bethgelab-docker
GPU=0 ~/docker/agmb-docker run -d --name cubist-mirror --privileged -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/aecker:/aecker --device /dev/video0 cubist-mirror


