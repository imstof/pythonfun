#!/bin/bash


if [[ -z $(squeue -u imstof | awk -F " " '/imstof/ {print$1;}') ]]
then
	i=1
	while [[ $i -lt 17 ]]
	do
		sbatch -J stress$i 127slurm.sh yescpu.sh
		((i++))
	done
else
	i=1
	while [[ $i -lt 17 ]]
	do
		
	done
fi

