#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -p defq
#SBATCH -N 1

echo ""
date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
module add c3ddb/python/3.5.2
module add c3ddb/miniconda/4.8.3

source /home/imstof/.conda_init

conda activate eukdetect

./$1
echo ""
echo "Script Complete"
date +"%D-%T"
