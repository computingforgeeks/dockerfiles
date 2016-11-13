#!/bin/sh
docker run -it --rm \
    --privileged \
    --name cent7 \
   -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
   -v ~/docker-env/local.repo:/etc/yum.repos.d/local.repo \
   -h cent7.example.com \
   jmutai/centos /sbin/init 

