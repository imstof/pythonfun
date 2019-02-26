#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J test
#SBATCH -w node201
#SBATCH -p sched_mem4TB
#SBATCH --time=5-00:00:00
#SBATCH --reservation=node201_test

./$1
