#!/usr/bin/python

import sys
from mpi4py import MPI

comm = MPI.COMM_WORLD

pid = comm.Get_rank()

p = comm.Get_size()

if pid == 0:
	print ""
	print "HELLO_MPI"
	print "There are ", p, " MPI processes running"

print "Hello, world, from process ", id, "!"
