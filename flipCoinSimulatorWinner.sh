#!/bin/bash

heads=0
tails=0
difference=0

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


while [[ $difference -lt 2 ]]
do
        flipSimulator
	checker
done

echo "$winner wins with $difference points"
