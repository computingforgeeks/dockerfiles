FROM alpine:latest
MAINTAINER jmutai <kiplangatmtai@gmail.com>

# Some variables
ENV LANG C.UTF-8
ENV HOME /weechat

ADD ./setup.sh /setup.sh
RUN chmod +x /setup.sh && \
/setup.sh

USER weechat
WORKDIR $HOME

# Persistent volume store
VOLUME $HOME/.weechat

EXPOSE 9001

# ENTRYPOINT ["weechat"]
CMD ["weechat"]

