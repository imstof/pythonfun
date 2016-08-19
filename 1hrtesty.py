#!/usr/bin/env python
#Attempt at slurm dependencies. This job should determine the best way
#evenly distribute the prime number sifter across multiple cores

#import sys

#pass argument for range?
#iRange=
iNumber=3
iFlops=0

#Take argument to set number of divisions
#Timestamp here
while iNumber <= 100000:
	for iCount in range(3,(iNumber/2)):

		if (iFlops%10000000==0)and(iFlops>0):
			print"Flops so far: %d" % (iFlops)
		iFlops+=1

	iNumber+=2

#Timestamp here. Start - Stop =

print ""
print "It takes %d flops to run the program" % (iFlops)

#Find half of flops

iNumber=((iFlops/8)-1)
print "1/8: %d" % (iFlops/8)
print "1/4: %d" % (iFlops/4)
print "3/8: %d" % ((iFlops/8)*3)
print "1/2: %d" % (iFlops/2)
print "5/8: %d" % ((iFlops/8)*5)
print "3/4: %d" % ((iFlops/4)*3)
print "7/8: %d" % ((iFlops/8)*7)
print ""
iFlops2=0
while iNumber <= 100000:
	for iCount in range(3,(iNumber/2)):

		if (iFlops2<=(iFlops/8)):
			i8thNum=iNumber
		if (iFlops2<=(iFlops/4)):
			iQuarterNum=iNumber
		if (iFlops2<=((iFlops/8)*3)):
			i3_8thNum=iNumber
		if (iFlops2<=(iFlops/2)):
			iHalfNum=iNumber
		if (iFlops2<=((iFlops/8)*5)):
			i5_8thNum=iNumber
		if (iFlops2<=((iFlops/4)*3)):
			i3QuarterNum=iNumber
		if (iFlops2<=((iFlops/8)*7)):
			i7_8thNum=iNumber
		if (iFlops2>=((iFlops/8)*7)):
			break
		iFlops2+=1

	if (iFlops2>=(iFlops/8)*7):
		break
	iNumber+=2
	
print "1/8 of flops occur before: %d" % (i8thNum)
print "1/4 of flops occur before: %d" % (iQuarterNum)
print "3/8 of flops occur before: %d" % (i3_8thNum)
print "1/2 of flops occur before: %d" % (iHalfNum)
print "5/8 of flops occur before: %d" % (i5_8thNum)
print "3/4 of flops occur before: %d" % (i3QuarterNum)
print "7/8 of flops occur before: %d" % (i7_8thNum)

print""
print"Program Complete" 
