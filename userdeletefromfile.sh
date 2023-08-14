#The file users.txt must contain usernames one per line and the file must be in same directory with shell script
#!/bin/bash

# Check if users.txt exists
if [ -f "users.txt" ]; then
    # Read each line in the file and delete the users
    while IFS= read -r user; do
        sudo userdel "$user"  # Use userdel to delete user
    done < "users.txt"
    echo "All users from users.txt have been deleted."
else
    echo "users.txt file not found."
fi
