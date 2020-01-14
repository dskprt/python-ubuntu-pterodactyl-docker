# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Python
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM ubuntu:latest

MAINTAINER dskprt, <59660013+dskprt@users.noreply.github.com>
# apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig
RUN apt-get install curl git openssl tar sqlite fontconfig python3 python3-pip \
    && adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]