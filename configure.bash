: << 'Commits'
This script will be used to configure file permissions on the sudo.
ELK configuration for:
ElasticSearch
Kibana 
Beats
Logstash

References: https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/
Commits


# This will configure the file location for the ELK configuration
# Make the elasticsearch file executable
sudo chmod +x /usr/share/elasticsearch/bin/elasticsearch
# Make the elasticsearch.yml file executable
sudo chmod +x /etc/elasticsearch/elasticsearch.yml

# Makes the kibana folder executable
sudo chmod +x /usr/shar/kibana
# Make the kibana.yml file executable
sudo chmod +x /etc/kibana/kibana.yml
# make the logstash file executable
sudo chmod +x /etc/logstash/conf.d/logstash.conf
# Make the logstash.yml file executable
sudo chmod +x /etc/logstash/conf.d/logstash.conf
