#!/usr/bin/python2.6
# hola.py

from mpi4py import MPI
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
print "hola mundo #", rank
