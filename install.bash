#!/bin/bash
# This script will install the ELK Stack such as Elasticsearch, Kubana, Logstash, and FileBeats

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Install Docker
sudo apt-get install docker.io -y

# Conditional to install elasticsearch if it is not already installed
if ! [ -x "$(command -v elasticsearch)" ]; then
  echo 'Installing Elasticsearch'
  sudo apt-get install openjdk-8-jdk -y
  sudo apt install elasticsearch
else
  echo 'Elasticsearch is already installed'
fi

# Conditional to install kibana if it is not already installed
if ! [ -x "$(command -v kibana)" ]; then
  echo 'Installing Kibana'
  sudo apt-get install openjdk-8-jdk -y
  sudo apt install kibana
else
  echo 'Kibana is already installed'
fi

# Conditional to install logstash if it is not already installed
if ! [ -x "$(command -v logstash)" ]; then
  echo 'Installing Logstash'
  sudo apt-get install openjdk-8-jdk -y
  sudo apt-get install logstash -y
else
  echo 'Logstash is already installed'
fi

# Conditional to install filebeat if it is not already installed
if ! [ -x "$(command -v filebeat)" ]; then
  echo 'Installing Filebeat'
  sudo apt-get install openjdk-8-jdk -y
else
  echo 'Filebeat is already installed'
fi

# Conditional to install filebeat if it is not already installed
if ! [ -x "$(command -v filebeat)" ]; then
  echo 'Installing Filebeat'
  sudo apt-get install openjdk-8-jdk -y
else
  echo 'Filebeat is already installed'
fi

