#!/bin/bash

echo "Welcome. Choose your avatar
1. Samurai
2. Prisoner
3. Prophet
"

read avatar

case $avatar in
1)
	type="Samurai"
	hp=50
	attack=5
	;;
2)
	type="Prisoner"
	hp=40
	attack=4
	;;
3)
	type="Prophet"
	hp=60
	attack=1
	;;
esac

echo "You chose to be a $type. Your HP is $hp. Your attack is $attack"

echo ""

echo "The first beast approaches. Pick a number between 0-1."
read vanquished

beast=$(($RANDOM % 2))

if [[ $vanquished == $beast && 50 > 25 ]]; then
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
elif [[ $USER == "tejas" ]]; then
	echo "Tejas always wins!!"
else
	echo "Margot killed you"
	exit 1
fi
