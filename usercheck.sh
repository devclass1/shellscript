#!/bin/bash

# Prompt for the username
read -p "Enter the username: " username

# Check if the user exists
if id "$username" &>/dev/null; then
  # Get the user ID
  user_id=$(id -u "$username")
  echo "User '$username' exists with user ID: $user_id"
else
  echo "User '$username' does not exist."
fi
