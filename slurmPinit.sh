#!/bin/bash
#Try to run python script on slurm

#SBATCH --mem-per-cpu=100M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J Pinit

echo ""
date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
./home/imstof/testjobs/primeInit.py
echo ""
echo "Script Complete"
date +"%D-%T"
