#!/bin/bash

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
# #SBATCH -J cputest
#SBATCH -w node127
#SBATCH -p newnodes
#SBATCH --reservation=techsquare_diags
#SBATCH --time=11:45:00
# #SBATCH -c 16
startk=$(date +"%k")
while true
do
	i=1
	while [[ i -lt 30 ]]
		do
			./$1
			((i++))
		done
	sleep 60
	killall yes
	sleep 8
	i=1

	endk=$(date +"%k")
	if [[ $endk -lt $startk ]]
	then
		endk=$(($endk+24))
	fi

	if [[ $endk-$startk -ge 11 ]]
	then
		break
	fi

done

echo "COMPLETE"
