FROM alpine:edge
MAINTAINER Mutai Josphat <kiplangatmtai@gmail.com>

WORKDIR /freeradius


VOLUME \
    /opt/db/ \
    /etc/freeradius/certs

EXPOSE \
    1812/udp \
    1813 \
    18120

CMD radiusd -f
