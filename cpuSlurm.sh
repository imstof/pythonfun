#!/bin/bash

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J cputest
#SBATCH -w node127
#SBATCH -p sched_mit_raffaele
#SBATCH -reservation=techsquare_diags
#SBATCH --time=18:45:00
#SBATCH --output=~/node127test.txt

./$1

