#!/bin/bash

#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J test
#SBATCH -p quicktest,defq
#SBATCH --time=1-00:00

./$1
