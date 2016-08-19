#!/bin/bash
#Try to run python script on slurm

#SBATCH -N1 -n1 --mem-per-cpu=100M -t01:15:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J testy

date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
echo ""
./$1
echo ""
echo ""
echo "Script Complete"
date +"%D-%T"
