#!/bin/bash

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH	-J fileouttest
#SBATCH -o /dev/null
#SBATCH --time=1:00

while true
do
	./$1
	sleep 5
	kill yes
	sleep 1
done
