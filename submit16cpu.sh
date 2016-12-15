#!/bin/bash

i=1
while [[ $i -lt 17 ]]
do
	sbatch -J stress$i 127slurm.sh yescpu.sh
	((i++))
done
