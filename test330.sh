#!/bin/bash

#SBATCH --mem-per-cpu=1000M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J test
#SBATCH -w node330
#SBATCH -p sched_mem1TB_centos7
#SBATCH --time=1-00:00
#SBATCH -c 1

./$1
