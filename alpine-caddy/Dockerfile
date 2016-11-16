FROM alpine:latest
MAINTAINER Mutai Josphat
LABEL version = "2" \
      description = "Caddy with Middleware modules based on Alpine Linux"
ENV LANG C.UTF-8

# Copy over a default Caddyfile to the base image
COPY ./Caddyfile /etc/Caddyfile

# USER caddy
ENTRYPOINT ["/sbin/tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
