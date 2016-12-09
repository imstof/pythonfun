#!/bin/bash

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J cputest
#SBATCH -w node127
#SBATCH -p newnodes
#  #SBATCH --reservation=techsquare_diags
#SBATCH --time=11:45:00
#  #SBATCH -c 16

#for i in $(seq 1 16)
#do
	./$1 
#done

echo "COMPLETE"
