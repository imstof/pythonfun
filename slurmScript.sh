#!/bin/bash
#Try to run python script on slurm

#SBATCH -N1 -n1 --mem-per-cpu=100M -t01:00:00 
#SBATCH -J testy

date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
echo ""
./primeInit.py
echo ""
echo ""
echo "Script Complete"
date +"%D-%T"
