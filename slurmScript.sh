#!/bin/bash
#Try to run python script on slurm

#SBATCH -N1 -n1 --mem-per-cpu=100M
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
