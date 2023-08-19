#!/bin/bash

log_file="./blockscout_monitor.log"

while true; do
  # Check the status of blockscout.service
  blockscout_status=$(systemctl is-active blockscout)

  if [ "$blockscout_status" != "active" ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] BlockScout service is down. Restarting..." >> "$log_file"
    systemctl restart blockscout
  fi

  sleep 5
done
