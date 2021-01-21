#!/bin/bash

heads=0
tails=0

function flipSimulator() {
	while [[ $heads -ne 21 && $tails -ne 21 ]]
	do
        	flipResult=$((RANDOM%2))
        	if [[ $flipResult -eq 0 ]]
        	then
                	(( heads++ ))
        	else
                	(( tails++ ))
        	fi
	done
}

function checker() {
	if [[ $heads -gt $tails ]]
	then
		difference=$(( heads-tails ))
		winner="HEADS"
	elif [[ $heads -lt $tails ]]
	then
		difference=$(( tails-heads ))
		winner="TAILS"
	else
		difference=0
	fi
}

flipSimulator

checker

if [[ $difference -eq 0 ]]
then
	echo "TIE"
else
	echo "$winner wins with $difference points"
fi
