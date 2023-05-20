#!/bin/bash

# Function to get CPU usage percentage
get_cpu_usage() {
  cpu_usage=$(top -bn1 | awk 'NR>7{s+=$9}END{print s "%"}')
  echo "CPU Usage: $cpu_usage"
}

# Function to get memory usage
get_memory_usage() {
  memory_usage=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3, $2, $3*100/$2 }')
  echo "$memory_usage"
}

# Function to get disk space usage
get_disk_usage() {
  disk_usage=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3, $2, $5}')
  echo "$disk_usage"
}

# Main function
main() {
  echo "System Monitoring"
  echo "-----------------"
  echo

  # Get and display CPU usage
  get_cpu_usage

  # Get and display memory usage
  get_memory_usage

  # Get and display disk space usage
  get_disk_usage
}

# Call the main function
main
