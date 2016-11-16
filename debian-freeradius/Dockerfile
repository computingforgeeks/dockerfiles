FROM debian:jessie
MAINTAINER Mutai Josphat <kiplangatmtai@gmail.com>

ENV LANG en_US.UTF-8 \
LANGUAGE en_US:en \
LC_ALL en_US.UTF-8

# Add script to do setup
ADD setup.sh /setup.sh
RUN chmod +x /setup.sh && /setup.sh
