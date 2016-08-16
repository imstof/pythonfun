#!/bin/bash

#Time a program

START=$(date +"%T")
echo $START

./$1

STOP=$(date +"%T")
echo $STOP
