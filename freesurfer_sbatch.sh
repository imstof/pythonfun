#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -p quicktest

echo ""
date +"%D-%T"
hostname
domainname
echo "I am: `whoami`"
echo "I am at `pwd`"
echo ""
module add c3ddb/freesurfer/6.0
source $FREESURFER_HOME/SetUpFreeSurfer.sh
./$1
echo ""
echo "Script Complete"
date +"%D-%T"
