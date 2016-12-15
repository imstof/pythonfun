#!/bin/bash

i=1
for x in $(squeue -u imstof | awk -F " " '/PD/ {print$1;}') #use imstof/PD if needed
do
	sbatch -J stress$i -d afterok:$x 127slurm.sh yescpu.sh
	((i++))
done
