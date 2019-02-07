#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH --reservation=<reservation>
#SBATCH -p <partition>
#SBATCH -w <nodes>
#SBATCH -c <cpus-per-task>
#SBATCH -N <minnondes>

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
