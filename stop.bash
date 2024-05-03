# This script will end the ELK Stack if the stack is already running
# https://man7.org/linux/man-pages/man1/pgrep.1.html

# Check if Elasticsearch is running
if pgrep -x "java -Xms1g -Xmx1g" > /dev/null; then
  echo "Stopping Elasticsearch..."
  sudo service elasticsearch stop
fi

# Check if Kibana is running
if pgrep -x "node" > /dev/null; then
  echo "Stopping Kibana..."
  sudo service kibana stop
fi

# Check if Logstash is running
if pgrep -x "java -Xms2g -Xmx2g" > /dev/null; then
  echo "Stopping Logstash..."
  sudo service logstash stop
fi

# Check if Beats are running
if pgrep -x "beats" > /dev/null; then
  echo "Stopping Beats..."
  sudo service filebeat stop
  sudo service metricbeat stop
fi