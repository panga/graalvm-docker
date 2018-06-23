FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install gcc build-essential zlib1g zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

ARG GRAALVM_BUILD

ENV GRAALVM_VERSION=graalvm-ce-${GRAALVM_BUILD}

ADD ${GRAALVM_VERSION}-linux-amd64.tar.gz /opt/java

ENV GRAALVM_HOME=/opt/java/${GRAALVM_VERSION}
ENV JAVA_HOME=${GRAALVM_HOME}
ENV PATH=${PATH}:${JAVA_HOME}/bin