#!/bin/bash

for i in $(squeue -u imstof | awk -F " " '/imstof/ {print$1;}')
do
	echo "jobid:$i"
done
