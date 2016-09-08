FROM iron/java:1.8

# This Projet Derived From memrise/docker-snowplow
MAINTAINER chocopowwwa <chocopowwwa@gmail.com>

ENV SNOWPLOW_SOURCE_ZIP snowplow_kinesis_r82_tawny_eagle.zip

WORKDIR /snowplow_jars/
RUN mkdir -p /etc/snowplow/ && \
    mkdir -p /opt/snowplow/ && \
    wget https://bintray.com/artifact/download/snowplow/snowplow-generic/${SNOWPLOW_SOURCE_ZIP} && \
    unzip ${SNOWPLOW_SOURCE_ZIP}
