#!/bin/sh
set -ex
# Do system update
apt -y update && apt -y upgrade 

# Install some packages needed alongside freeradius

apt install -y \
    freeradius \
    freeradius-utils \
    freeradius-mysql \
    php5-gd \
    php-pear \
    php-db \
    php5-curl \
    php-mail-mime


