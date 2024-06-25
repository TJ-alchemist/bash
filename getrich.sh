#!/bin/bash/

echo "What is your name?"
read name

echo "What is your age?"
read age

echo "Hello, $name, you are $age years old"

echo "Calculating..."

sleep 2

getrich=$((($RANDOM % 15) + $age))

echo "You will get rich when you are $getrich years old"
