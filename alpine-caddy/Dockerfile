FROM alpine:latest
MAINTAINER Mutai Josphat



# Copy over a default Caddyfile to the base image
COPY ./Caddyfile /etc/Caddyfile

# USER caddy
ENTRYPOINT ["/sbin/tini"]

CMD ["caddy", "--conf", "/etc/Caddyfile"]
