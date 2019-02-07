#!/bin/bash

#SBATCH --mem-per-cpu= 
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J test
#SBATCH -w nodeXXX
#SBATCH -p 
#SBATCH --time=
#SBATCH -c 

./$1
