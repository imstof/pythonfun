#!/bin/bash

i=1
while [[ $i -lt 17 ]]
do
	sbatch -J stress$i -d afterok:$1 127slurm.sh yescpu.sh
	((i++))
done
