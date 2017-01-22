#
# Alpine linux docker image
#
# A minimal base image based on Alpine Linux with useful packages and tools.
#
#

FROM alpine:latest

MAINTAINER Jerald Watts <cysix928@gmail.com>

# Set environment variables.
ENV \
  TERM=xterm-color

# Install packages.
RUN \
  apk add --update --no-cache bash \
    coreutils \
    curl \
    nano \
    vim \
    git \
    tar \
    wget \
    && rm -rf /var/cache/apk/*

ADD rootfs /

ENTRYPOINT ["/init"]
