#!/bin/bash

# This script will end the ELK Stack if the stack is already running
# Reference on using pgrep: https://man7.org/linux/man-pages/man1/pgrep.1.html

# Check if Elasticsearch is running
if pgrep -x "java -Xms1g -Xmx1g" > /dev/null; then
  echo "Stopping Elasticsearch..."
  sudo docker stop elasticsearch
fi

# Check if Kibana is running
if pgrep -x "node" > /dev/null; then
  echo "Stopping Kibana..."
  sudo docker stop kibana
fi

# Check if Logstash is running
if pgrep -x "java -Xms2g -Xmx2g" > /dev/null; then
  echo "Stopping Logstash..."
  sudo docker stop logstash
fi

# Check if Beats are running
if pgrep -x "beats" > /dev/null; then
  echo "Stopping Beats..."
  sudo docker stop filebeat
  sudo docker stop metricbeat
fi
