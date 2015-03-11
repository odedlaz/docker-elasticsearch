## Elasticsearch Dockerfile


This repository contains **Dockerfile** of [Elasticsearch](http://www.elasticsearch.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/elasticsearch/).


### Base Docker Image

* [dockerfile/elasticsearch](http://dockerfile.github.io/#/elasticsearch)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/sxoded/elasticsearch-head) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull sxoded/elasticsearch-head`

   (alternatively, you can build an image from Dockerfile: `docker build -t="sxoded/elasticsearch-head" github.com/sxoded/elasticsearch-head`)


### Usage

    docker run -d -p 9200:9200 -p 9300:9300 sxoded/elasticsearch-head

#### Attach persistent/shared directories

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create Elasticsearch config file at `<data-dir>/elasticsearch.yml`.

    ```yml
    path:
      logs: /data/log
      data: /data/data
    ```

  3. Start a container by mounting data directory and specifying the custom configuration file:

    ```sh
    docker run -d -p 9200:9200 -p 9300:9300 -v <data-dir>:/data sxoded/elasticsearch-head /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
    ```

After few seconds, open `http://<host>:9200` to see the result.
