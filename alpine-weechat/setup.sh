#!/bin/sh

# Install weechat
apk add --no-cache weechat \
    python \
    vim \
    bash 

# Add weechat user and group
export HOME=/weechat
addgroup -S weechat
adduser -D -S -u 6000 -h $HOME -s /sbin/nologin -G weechat weechat
chown -R weechat:weechat $HOME

#  -S        Create a system user
#  -D        Don't assign a password
#  -u UID    User id
#  -G GRP    Add user to existing group



