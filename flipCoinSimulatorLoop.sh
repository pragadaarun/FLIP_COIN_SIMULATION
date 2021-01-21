#!/bin/bash

heads=0
tails=0

while [[ $(($heads+$tails)) -lt 100 ]]
do
	flipResult=$((RANDOM%2))
	if [[ $flipResult -eq 0 ]]
	then
		(( heads++ ))
	else
        	(( tails++ ))
	fi
done

echo "HEADS won $heads times"
echo "TAILS won $tails times"
