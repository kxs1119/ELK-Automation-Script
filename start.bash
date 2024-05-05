#!/bin/bash

# This script will be used to test the ELK stack by starting and integrating the following:
# Kibana
# Elasticsearch
# Logstash

# Test Elasticsearch by checking if it's accessible
if curl --output /dev/null --head --fail http://localhost:9200; then
    echo "Elasticsearch is already running"
else
    echo "Elasticsearch is not running, starting..."
    sudo docker run --name elasticsearch -d -p 9200:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:7.17.20
    sleep 10 # Wait for Elasticsearch to start
    sudo docker ps -a # Display running containers for verification
fi

# Test Kibana by checking if Elasticsearch is accessible
if curl --output /dev/null --head --fail http://localhost:9200; then
    echo "Kibana is not running"
else
    echo "Kibana is not running, starting..."
    sudo docker run --name kibana -d -p 5601:5601 docker.elastic.co/kibana/kibana:7.17.20
    sleep 10 # Wait for Kibana to start
    sudo docker ps -a # Display running containers for verification
fi

# Test Logstash by checking if Elasticsearch is accessible
if curl --output /dev/null --head --fail http://localhost:9200; then
    echo "Logstash is not running"
else
    echo "Logstash is not running, starting..."
    sudo docker run --name logstash -d docker.elastic.co/logstash/logstash:7.17.20
    sleep 10 # Wait for Logstash to start
    sudo docker ps -a # Display running containers for verification
fi

# Test Filebeat by checking if Elasticsearch is accessible
if curl --output /dev/null --head --fail http://localhost:9200; then
    echo "Filebeat is not running"
else
    echo "Filebeat is not running, starting..."
    sudo docker run --name filebeat -d docker.elastic.co/beats/filebeat:7.17.20
    sleep 10 # Wait for Filebeat to start
    sudo docker ps -a # Display running containers for verification
