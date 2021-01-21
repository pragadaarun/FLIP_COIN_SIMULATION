#!/bin/bash

flipResult=$((RANDOM%2))
if [[ $flipResult -eq 0 ]]
then
	echo "TAILS"
else
	echo "HEADS"
fi
