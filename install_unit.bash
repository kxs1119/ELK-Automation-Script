#!/bin/bash
# This script will test the installation and configuration of the ELK Stack
#  Reference on using pgrep: https://man7.org/linux/man-pages/man1/pgrep.1.html


# Test Elasticsearch
if pgrep -x "java -Xms1g -Xmx1g" > /dev/null; then
  echo "Elasticsearch is running..."
else
  echo "Elasticsearch is not running. Please install and configure it."
fi

# Test Kibana
if pgrep -x "node" > /dev/null; then
  echo "Kibana is running..."
else
  echo "Kibana is not running. Please install and configure it."
fi

# Test Logstash
if pgrep -x "java -Xms2g -Xmx2g" > /dev/null; then
  echo "Logstash is running..."
else
  echo "Logstash is not running. Please install and configure it."
fi

# Test Beats
if pgrep -x "beats" > /dev/null; then
  echo "Beats are running..."
else
  echo "Beats are not running. Please install and configure them."
fi