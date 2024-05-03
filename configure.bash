: << 'Commits'
This script will be used to configure file permissions on the sudo.
ELK configuration for:
ElasticSearch
Kibana 
Beats
Logstash

References: https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/
Commits


#!/bin/bash
# This script will configure file permissions on the ELK configuration

# Make the elasticsearch file executable
sudo chmod +x /usr/share/elasticsearch/bin/elasticsearch

# Make the elasticsearch.yml file readable and writable
sudo chmod 644 /etc/elasticsearch/elasticsearch.yml

# Makes the kibana folder executable
sudo chmod +x /usr/share/kibana

# Make the kibana.yml file readable and writable
sudo chmod 644 /etc/kibana/kibana.yml

# Make the logstash file executable
sudo chmod +x /etc/logstash/conf.d/logstash.conf

# Make the logstash.yml file readable and writable
sudo chmod 644 /etc/logstash/conf.d/logstash.conf
