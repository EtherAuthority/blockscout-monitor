#!/bin/bash

log_file="./blockscout_monitor.log"
blockscout_url="http://localhost:4000"  # Replace with the actual URL of your BlockScout instance

while true; do
  # Check the accessibility of BlockScout URL
  if curl --output /dev/null --silent --head --fail "$blockscout_url"; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] BlockScout service is accessible. No action needed."
  else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] BlockScout service is not accessible. Restarting..."
    systemctl restart blockscout
  fi

  sleep 300  # Adjust sleep duration as needed
done
