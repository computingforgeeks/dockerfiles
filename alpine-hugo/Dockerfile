FROM alpine:latest
MAINTAINER Mutai Josphat <kiplangatmtai@gmail.com, computingforgeeks.com>

COPY setup.sh .
RUN chmod +x setup.sh
RUN ./setup.sh

VOLUME /web
WORKDIR /web

EXPOSE 1313
CMD ["hugo","version"]
