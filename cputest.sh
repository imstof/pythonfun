#!/bin/bash

#put cpu under load

#16 cores

while true
do
	for i in $(seq 1 40)
	do
		echo "2^2^20" | bc &>/dev/null
	done
done
