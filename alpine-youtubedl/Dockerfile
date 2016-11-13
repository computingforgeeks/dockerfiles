#
# Dockerfile for youtube-dl
#

FROM alpine:edge
MAINTAINER Mutai Josphat <kiplangatmtai@gmail.com>

ADD setup.sh /setup.sh
RUN chmod +x /setup.sh && \
/setup.sh

WORKDIR /downloads

VOLUME /downloads

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
