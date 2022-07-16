FROM ttbb/base:jdk17

WORKDIR /opt/sh

RUN echo "start" && \ 
wget https://downloads.apache.org/activemq/activemq-artemis/2.23.1/apache-artemis-2.23.1-bin.tar.gz && \
mkdir -p /opt/sh/artemis && \
tar -xf apache-artemis-2.23.1-bin.tar.gz -C /opt/sh/artemis --strip-components 1 && \
rm -rf /opt/sh/apache-artemis-2.23.1-bin.tar.gz && \
echo "end"

ENV ARTEMIS_HOME /opt/sh/artemis

WORKDIR /opt/sh/artemis
