#!/bin/bash
# This script will install the ELK Stack such as Elasticsearch, Kubana, Logstash, and FileBeats

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Install Docker
sudo apt-get install docker.io -y

# install java jdk 8 
sudo apt-get install openjdk-8-jdk -y


# Conditional to install elasticsearch if it is not already installed
if ! [ -x "$(command -v elasticsearch)" ]; then
  echo 'Installing Elasticsearch'
  docker pull elasticsearch:7.17.20
else
  echo 'Elasticsearch is already installed'
fi

# Conditional to install kibana if it is not already installed
if ! [ -x "$(command -v kibana)" ]; then
  echo 'Installing Kibana'
  docker pull kibana:7.17.20
else
  echo 'Kibana is already installed'
fi

# Conditional to install logstash if it is not already installed
if ! [ -x "$(command -v logstash)" ]; then
  echo 'Installing Logstash'
  docker pull logstash:7.17.20
else
  echo 'Logstash is already installed'
fi

# Conditional to install filebeat if it is not already installed
if ! [ -x "$(command -v filebeat)" ]; then
  echo 'Installing Filebeat'
  docker pull docker.elastic.co/beats/filebeat:7.17.20
else
  echo 'Filebeat is already installed'
fi