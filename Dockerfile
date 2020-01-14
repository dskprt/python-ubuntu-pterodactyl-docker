# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Python
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM ubuntu:bionic

MAINTAINER dskprt, <59660013+dskprt@users.noreply.github.com>

RUN echo 'deb http://pl.archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse' > /etc/apt/sources.list && apt-get update && apt-get install -y curl openssl tar sqlite fontconfig python3 python3-pip && adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]