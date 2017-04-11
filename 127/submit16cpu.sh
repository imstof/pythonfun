#!/bin/bash


if [[ -z $(squeue -u imstof | awk -F " " '/imstof/ {print$1;}') ]]
then
	i=1
	while [[ $i -lt 17 ]]
	do
		sbatch -J stress$i 127slurm.sh yescpu.sh
		((i++))
	done
	sleep 10
fi

if [[ -z $(squeue -u imstof | awk -F " " '/PD/ {print$1;}') ]]
then
	i=1
	for x in $(squeue -u imstof | awk -F " " '/imstof/ {print$1;}')
	do
		sbatch -J stress$i -d afterok:$x 127slurm.sh yescpu.sh
		((i++))
	done

	sleep 10
fi

i=1
for x in $(squeue -u imstof | awk -F " " '/PD/ {print$1;}')
do
	sbatch -J stress$i -d afterok:$x 127slurm.sh yescpu.sh
	((i++))
done
