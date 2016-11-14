#!/bin/bash
#Try to run python script on slurm

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J testMPI

echo ""
echo "Submitted to slurm: " $(date +"%D-%T")
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
./$1
echo ""
echo "Script completed: " $(date +"%D-%T")
