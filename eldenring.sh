#!/bin/bash

echo "The first beast approaches. Pick a number between 0-1."
read vanquished

beast=$(($RANDOM % 2))

if [[ $vanquished == $beast ]]; then
	echo "You vanquished the beast!!!"
else
	echo "You died!"
	exit 1
fi

sleep 2

echo ""
echo "The second beast margot approaches. Pick a number between 0-9."
read vanquished

margot=$(($RANDOM % 10))

if [[ $margot == $vanquished || $vanquished == "cheat" ]]; then
	echo "Margot has been vanquished"
else
	echo "Margot killed you"
	exit 1
fi
