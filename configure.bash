# Elasticsearch
# Make the elasticsearch.yml file readable and writable
sudo docker exec elasticsearch chmod 644 /usr/share/elasticsearch/config/elasticsearch.yml

# Configure Elasticsearch to listen for connections from Logstash
sudo docker exec elasticsearch sh -c 'echo "network.host: 0.0.0.0" >> /usr/share/elasticsearch/config/elasticsearch.yml'

# Kibana
# Make the kibana.yml file readable and writable
sudo docker exec kibana chmod 644 /usr/share/kibana/config/kibana.yml

# Configure Kibana to connect to Elasticsearch
sudo docker exec kibana sh -c 'echo "elasticsearch.hosts: [\"http://elasticsearch:9200\"]" >> /usr/share/kibana/config/kibana.yml'

# Logstash
# Make the logstash.yml file readable and writable
sudo docker exec logstash chmod 644 /usr/share/logstash/config/logstash.yml

# Configure Logstash to receive logs from Beats and send to Elasticsearch
sudo docker exec logstash sh -c 'echo "input {
  beats {
    port => 5044
  }
}

output {
  elasticsearch {
    hosts => [\"elasticsearch:9200\"]
    index => \"logstash-%{+YYYY.MM.dd}\"
  }
}" >> /usr/share/logstash/config/logstash.yml'

# Filebeat
# Make the filebeat.yml file readable and writable
sudo docker exec filebeat chmod 644 /usr/share/filebeat/filebeat.yml

# Configure Filebeat to send logs to Logstash
sudo docker exec filebeat sh -c 'echo "output.logstash:
  hosts: [\"logstash:5044\"]" >> /usr/share/filebeat/filebeat.yml'

# Restart Filebeat for changes to take effect
sudo docker restart filebeat
