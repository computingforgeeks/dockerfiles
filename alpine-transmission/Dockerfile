FROM alpine:edge

MAINTAINER jmutai <kiplangatmtai@gmail.com>

ADD setup.sh .
RUN chmod +x /setup.sh
RUN /setup.sh
COPY settings.json /transmission/config/

ENV USERNAME admin
ENV PASSWORD password

EXPOSE 9091 51413/tcp 51413/udp
VOLUME ["/transmission/downloads", "/transmission/incomplete", "/transmission/watch"]

ENTRYPOINT ["/usr/bin/transmission-daemon"]
CMD ["--foreground","--config-dir", "/transmission/config"]
