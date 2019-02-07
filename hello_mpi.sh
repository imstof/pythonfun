#!/bin/bash
#
mpiexec -n 8 python hello_mpi.py >& hello_mpi_output.txt
#
echo " "
echo "The hello_mpi example has been run."

