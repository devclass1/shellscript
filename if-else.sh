#Create a shell script which will take day of the week from user. It will print "Half Working Day" for Saturday, Print "Full Holiday" for Sunday and print "Working day " for all other days

#!/bin/bash

# Prompt the user for the day of the week
echo "Please enter the day of the week:"
read day

# Convert the input to lowercase for case-insensitive comparison
day=$(echo "$day" | tr '[:upper:]' '[:lower:]')

# Check the day of the week and display the corresponding message
if [ "$day" = "saturday" ]; then
    echo "Half Working Day"
elif [ "$day" = "sunday" ]; then
    echo "Full Holiday"
else
    echo "Working Day"
fi
