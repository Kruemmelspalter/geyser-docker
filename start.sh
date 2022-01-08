#! /bin/bash

CONFIG_FILE=/data/config.yml

cd /data
envsubst < /opt/config.yml.template > /data/config.yml

java -Xms$INIT_MEMORY -Xmx$MAX_MEMORY -jar /opt/Geyser.jar
