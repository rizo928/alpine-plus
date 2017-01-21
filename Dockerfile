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
  apk --update add bash coreutils curl figlet nano vim git procps tar wget && \
  rm -rf /var/cache/apk/*

# Set the default command.
CMD ["/bin/bash"]
