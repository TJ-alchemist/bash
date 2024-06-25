#!/bin/bash

echo "The first beast approaches. Pick a number between 0 and 1. (0/1)"
read vanquished

beast=$(($RANDOM % 2))

if [[ $vanquished == $beast ]]; then
	echo "You vanquished the beast!!!"
else
	echo "You died!"
fi
