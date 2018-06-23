FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install gcc build-essential zlib1g zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

ARG GRAALVM_INSTALLER=graalvm-ce-1.0.0-rc2-linux-amd64.tar.gz
ARG GRAALVM_BUILD=graalvm-ce-1.0.0-rc2

ADD ${GRAALVM_INSTALLER} /opt/java
ENV JAVA_HOME=/opt/java/${GRAALVM_BUILD}
ENV PATH=${PATH}:${JAVA_HOME}/bin
