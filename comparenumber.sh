#compare Two Numbers taken from user as input and print the larger one

#!/bin/bash

# Prompt the user for num1
read -p "Enter the first number (num1): " num1

# Prompt the user for num2
read -p "Enter the second number (num2): " num2

# Compare the numbers and print the result
if [ "$num1" -gt "$num2" ]; then
    echo "num1 ($num1) is larger than num2 ($num2)."
elif [ "$num1" -lt "$num2" ]; then
    echo "num2 ($num2) is larger than num1 ($num1)."
else
    echo "Both numbers are equal."
fi
