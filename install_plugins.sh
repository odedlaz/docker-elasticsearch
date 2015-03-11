#!/bin/bash
PLUGINS_DIR="/elasticsearch/plugins"

echo "creating plugins directory at: $PLUGINS_DIR"
mkdir -p $PLUGINS_DIR

while read plugin
do
	echo "installing plugin: $plugin"
	/elasticsearch/bin/plugin -i $plugin
done < "/tmp/plugins"
