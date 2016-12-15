#!/bin/bash


startk=$(date +"%M")
while true
do
	i=1
	while [[ i -lt 30 ]]
		do
#			./$1
			echo $i
			((i++))
		done
	sleep 60
	killall yes
	sleep 8
	i=1

	endk=$(date +"%M")
	if [[ $endk -lt $startk ]]
	then
		endk=$(($endk+60))
	fi

	if [[ $endk-$startk -ge 3 ]]
	then
		break
	fi

done

echo "COMPLETE"
