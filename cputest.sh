#!/bin/bash

#put cpu under load

#16 cores
i=1
while true
do
	while [[ $i -lt 17 ]]
	do
		(time echo "2^2^20" | bc) 1>/dev/null
		((i++))
	done
	sleep 3
done
