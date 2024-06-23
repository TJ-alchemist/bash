#!/bin/bash

# read name
user=$(whoami)
place=$(pwd)
date=$(date)

name=$1
compliment=$2

echo "I am $name"
sleep 2
echo "You're looking good today $name!!"
sleep 2
echo "You have the best $compliment, $name!!"
sleep 2
echo "You are currently logged in as $user, and you are in $place. Also today is: $date"
