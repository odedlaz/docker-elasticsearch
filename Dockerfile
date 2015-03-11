FROM dockerfile/elasticsearch
MAINTAINER Oded Lazar oded@senexx.com

ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

RUN mkdir -p /elasticsearch/plugins &&
  /elasticsearch/bin/plugin -i mobz/elasticsearch-head
