#!/bin/bash

while true; do
  # Ask the user for a process ID
  read -p "Enter a process ID: " process_id

  # Use the 'kill -0' command to check if the process exists
  if kill -0 "$process_id" 2>/dev/null; then
    echo "Process ID $process_id exists."
    break  # Exit the loop if the process exists
  else
    echo "Process ID $process_id doesn't exist. Please try again."
  fi
done
