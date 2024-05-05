#!/bin/bash
# This script will test the installation and configuration of the ELK Stack
# Reference on using pgrep: https://man7.org/linux/man-pages/man1/pgrep.1.html

# Test Elasticsearch
if docker ps | grep elasticsearch > /dev/null; then
  echo "Elasticsearch is running..."
else
  echo "Elasticsearch is not running. Please install and configure it."
fi

# Test Kibana
if docker ps | grep kibana > /dev/null; then
  echo "Kibana is running..."
else
  echo "Kibana is not running. Please install and configure it."
fi

# Test Logstash
if docker ps | grep logstash > /dev/null; then
  echo "Logstash is running..."
else
  echo "Logstash is not running. Please install and configure it."
fi

# Test Beats
if docker ps | grep filebeat > /dev/null; then
  echo "Beats are running..."
else
  echo "Beats are not running. Please install and configure them."
fi
