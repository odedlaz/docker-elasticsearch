FROM elasticsearch
MAINTAINER Oded Lazar oded@senexx.com

# this image moves the plugins dir to a new place
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# add the plugins file and install_plugins
COPY *plugins* /tmp/

RUN chmod u+x /tmp/install_plugins.sh

RUN /tmp/install_plugins.sh


VOLUME [/usr/share/elasticsearch/plugins]
