#!/bin/sh
caddy () {
        docker run -d \
            --name caddy \
            -p 80:80 \
            -v $HOME/.static:/var/www/html \
            -v $HOME/.caddy:/root/.caddy \
            jmutai/caddy "$@"
    }

