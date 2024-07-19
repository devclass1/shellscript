Create a linux shell script that will check a file if it is empty print blank file else count the lines and print how many lines are there in that file.

#!/bin/bash

# Check if a filename is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Assign the filename to a variable
filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

# Check if the file is empty
if [ ! -s "$filename" ]; then
  echo "blank file"
else
  # Count the lines in the file
  line_count=$(wc -l < "$filename")
  echo "The file has $line_count lines."
fi
