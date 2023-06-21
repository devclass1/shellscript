#Create a shell script which will take user names from a file name users.txt and create all users with default password as pass@123
# Create a file named users.txt in the same directory as the script and write some username one per line



#!/bin/bash

# Define the filename
filename="users.txt"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Read the file line by line
while IFS= read -r username; do
    # Check if the username already exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists. Skipping..."
    else
        # Create the user with the specified username
        sudo useradd -m "$username"

        # Set a default password for the user
        echo -e "pass@123\npass@123" | sudo passwd "$username"

        echo "User '$username' created successfully."
    fi
done < "$filename"

