# This image is the base image for all Java 8 Docker images.

FROM centos/s2i-base-centos7

MAINTAINER Julian Tescher <julian@outtherelabs.com>

ENV JAVA_VERSION=1.8.0

# Install Java, and openshift client
RUN yum update -y && \
    yum install -y java-${JAVA_VERSION}-openjdk && \
    yum clean all -y && \
    set -o pipefail && curl -L https://github.com/openshift/origin/releases/download/v1.4.1/openshift-origin-client-tools-v1.4.1-3f9807a-linux-64bit.tar.gz | \
    tar -zx && \
    mv openshift*/oc /usr/local/bin && \
    rm -rf openshift-origin-client-tools-*
