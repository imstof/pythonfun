#!/bin/bash

#SBATCH --mem-per-cpu=1000M
# #SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -n 1
#SBATCH -J flap_diag
#SBATCH -p sched_system_all
#SBATCH	-w node736
#SBATCH --reservation=imstof_diags
#SBATCH -t 00:09:00

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
