#!/bin/bash

#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J test
#SBATCH -p visterra
#SBATCH --time=14:00
#SBATCH -c 1

./$1
