#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH --reservation=hippa_reclaim_test
#SBATCH -p defq
#SBATCH -w node070

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
