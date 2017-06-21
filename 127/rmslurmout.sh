#!/bin/bash

# Delete completed slurm-foo.out files

i=12357106

while [[ i -le 12371339 ]]
do
	if [[ -e slurm-$i.out ]]
	then
		for x in $(cat slurm-$i.out | tail)
		do
			if [[ $x == "COMPLETE" || -n $(echo $x | awk -F " " '/CANCELLED/') ]]
			then
				rm slurm-$i.out
			fi
		done

	fi


((i++))
done
