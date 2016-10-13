#!/bin/bash
#Try to run python script on slurm

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH --reservation=imstof_77
#SBATCH -p defq

echo ""
date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
./$1
echo ""
echo "Script Complete"
date +"%D-%T"
