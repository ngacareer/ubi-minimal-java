# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:   https://github.com/ngacareer
# Twitter:  https://twitter.com/ngacareer
# Docker:   https://hub.docker.com/ngacareer
# Facebook: https://facebook.com/ngacareer 
# Linkedin: https://www.linkedin.com/in/ngacareer/
# website:  https://ngacareer.com

FROM registry.redhat.io/ubi8/ubi-minimal:latest

ENV JAVA_VERSION 1.8.0

RUN  microdnf update -y \
     && microdnf install -y openssl java-$JAVA_VERSION-openjdk-devel vim-enhanced curl gzip tar \
     && microdnf clean all

ENV JAVA_HOME=/usr/lib/jvm/jre-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN printf '%s\n' \
  '#!/bin/sh' \
  '' \
  'while true' \
  'do' \
  'sleep 15' \
  'done' \
> /run/entrypoint.sh && chmod a+x /run/entrypoint.sh

ENTRYPOINT ["/run/entrypoint.sh"]
