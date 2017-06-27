#!/bin/bash

#try to run mpi on cluster
# alter later to pass parameters

#SBATCH --mem-per-cpu=350M
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cehnstrom@techsquare.com
#SBATCH -J cpu_stress
#SBATCH -n 64
#SBATCH -N 1
#SBATCH -p defq
#SBATCH -w node091
#SBATCH --reservation=imstof_diags

module add mpimpiexec/0.84_432
module add engaging/python/2.7.12

mpiexec -n 64 python /home/imstof/testjobs/MPI/hola.py
