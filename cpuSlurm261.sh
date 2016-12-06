#!/bin/bash

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J cputest
#SBATCH -w node261
#SBATCH -p sched_mit_raffaele
#SBATCH --reservation=techsquare_diags
#SBATCH --time=17:45:00

./$1

