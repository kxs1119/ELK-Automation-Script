#!/bin/bash
# reference https://www.freecodecamp.org/news/bash-sleep-how-to-make-a-shell-script-wait-n-seconds-example-command/

# Define a log message
log_message="This is a test log message from Filebeat to Logstash."

# Write the log message to a file
echo "$log_message" >> /tmp/test.log

# Wait for a few seconds to ensure Filebeat has time to read the log file
sleep 5

# Check if the log message is present in the Logstash logs
if sudo docker logs logstash | grep "$log_message" > /dev/null; then
  echo "Log message successfully received by Logstash."
else
  echo "Failed to send log message to Logstash."
  exit 1
fi

# Check if the log message is present in the Logstash pipeline
if sudo docker exec logstash cat /usr/share/logstash/pipeline/logstash.conf | grep "$log_message" > /dev/null; then
  echo "Log message successfully processed by Logstash pipeline."
else
  echo "Failed to process log message in Logstash pipeline."
  exit 1
fi

# Clean up: remove the test log file
rm /tmp/test.log
