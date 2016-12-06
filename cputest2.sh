#!/bin/bash

#put cpu under load

#16 cores

while true
do
	for i in $(seq 1 40)
	do
		(time echo "2^2^20" | bc) 1>/dev/null
	done
done
