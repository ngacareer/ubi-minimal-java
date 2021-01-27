FROM registry.redhat.io/ubi8/ubi-minimal:latest

RUN  microdnf update -y \
     && microdnf install -y openssl java-1.8.0-openjdk-devel vim-enhanced curl gzip tar \
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
