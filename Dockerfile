# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:   https://github.com/ngacareer
# Twitter:  https://twitter.com/ngacareer
# Docker:   https://hub.docker.com/ngacareer
# Facebook: https://facebook.com/ngacareer 
# Linkedin: https://www.linkedin.com/in/ngacareer/
# website:  https://ngacareer.com

FROM registry.redhat.io/ubi8/ubi-minimal:latest


LABEL name="ubi-mininal-java" \
    version="14" \
    io.openshift.tags="base, openssl, curl,openjdk-dev" \
    io.k8s.description="OpenJDK base image providing java SDK" \
    io.k8s.display-name="Java 14"

ENV JAVA_VERSION 14

RUN  microdnf update -y \
     && microdnf install -y openssl java-$JAVA_VERSION-openjdk-devel vim-enhanced \
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
