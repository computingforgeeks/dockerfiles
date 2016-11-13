#!/bin/sh
apk add --no-cache add freeradius \
    freeradius-mysql \
    freeradius-radclient \
    make \
    openssl-dev 

/etc/raddb/certs/bootstrap

# Fix permissions
chown -R root:radius /etc/raddb/certs
chgrp radius  /usr/sbin/radiusd 
chmod g+rwx /usr/sbin/radiusd 

ln -s /etc/raddb/mods-available/sql
/etc/raddb/mods-available/sqlcounter /etc/raddb/mods-enabled 

sed -i -e 's@driver =.*@driver = "rlm_sql_mysql"@' \
              -e 's@dialect =.*@dialect = "mysql"@' \
              -e '/read_clients = yes/s@^#@@' \
              -e '/Connection info:/,/^$/{s@^#@@;s@localhost@mysql@}' \
              /etc/raddb/mods-available/sql \

sed -i -e '/^#\t*eap$/s@^#@@' \
              -e '/^#\teap {$/,/#\t}$/s@^#@@' \
              /etc/raddb/sites-enabled/default

