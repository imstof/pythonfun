#!/bin/bash

DIR=/home/imstof/flap_data/
FILE0=$DIR/file0.txt
FILE1=$DIR/file1.txt

touch $FILE0

dmesg | tail | grep Down > $FILE1

if [[ -n $(diff $FILE0 $FILE1) ]]
then
	diff $FILE0 $FILE1 | mail -s "nic down on $(hostname)" cehnstrom@techsquare.com
fi

mv $FILE1 $FILE0
