: << 'Comment'
This script will be used to test the ELK stack by starting and intergrating thethe following:
Kibana
Elasticsearch
Logstash
Comment


# This section will test Elasticsearch by starting elasticsearch
# Create a conditional statement to check that elasticsearch is running prior to starting Kibana
if [curl --output /dev/null --silent --head --fail http://localhost:9200]; then
    echo "Elasticsearch is not running"
    exit 1
else
    sudo systemctl start elasticsearch
    sudo systemctl status elasticsearch

# This section will test Kibana by starting Kibana
# Create a conditional statement to check that elasticsearch is running prior to starting Kibana
if [curl --output /dev/null --silent --head --fail http://localhost:9200]; then
    echo "Elasticsearch is not running"
    exit 1
else
    sudo systemctl start kibana
    sudo systemctl status kibana

# This section will test Logstash by starting Logstash
# Create a conditional statement to check that elasticsearch is running prior to starting Logstash
if [curl --output /dev/null --silent --head --fail http://localhost:9200]; then
    echo "Elasticsearch is not running"
    exit 1
else
    sudo systemctl start logstash
    sudo systemctl status logstash



