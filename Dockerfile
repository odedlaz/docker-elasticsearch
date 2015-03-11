FROM dockerfile/elasticsearch
MAINTAINER Oded Lazar oded@senexx.com

# this image moves the plugins dir to a new place
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

VOLUME [/elasticsearch/plugins]

RUN mkdir -p /elasticsearch/plugins && \
  /elasticsearch/bin/plugin -i mobz/elasticsearch-head

