#!/bin/bash

#SBATCH --reservation=imstof_diags
#SBATCH --mem-per-cpu=250000MB
#SBATCH -w node091
#SBATCH -p defq
#SBATCH -J memstress
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com

date
./$1
date
