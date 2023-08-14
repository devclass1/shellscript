#!/bin/bash

# Prompt user for input
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Perform addition
result=$((num1 + num2))

# Print the result
echo "The result of $num1 + $num2 is: $result"
