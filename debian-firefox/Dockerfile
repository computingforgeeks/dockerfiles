FROM debian:stretch
MAINTAINER Mutai Josphat <kiplangatmtai@gmail.com>

ENV LANG en-US
#COPY local.conf /etc/fonts/local.conf

ADD setup.sh /
RUN chmod +x /setup.sh && /setup.sh

CMD [ "/usr/bin/firefox" ]



