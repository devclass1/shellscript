#!/bin/bash

# Prompt the user for the username
read -p "Enter the username: " username

# Check if the username already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists. Please choose a different username."
    exit 1
fi

# Create the user with the specified username
sudo useradd -m "$username"

# Set a password for the user
sudo passwd "$username"

echo "User '$username' created successfully."
