#!/bin/bash

# Prompt the user for a number
echo "Please enter a number:"
read number

# Loop to print "Hello" the specified number of times
for ((i=0; i<number; i++)); do
    echo "Hello"
done
