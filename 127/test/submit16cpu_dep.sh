#!/bin/bash
i=1
for x in $(squeue -u imstof | awk -F " " '/imstof/ {print$1;}')
do
	sbatch -J stress$i -d afterok:$x 127slurm.sh yescpu.sh
	((i++))
done
