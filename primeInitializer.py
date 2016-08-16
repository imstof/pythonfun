#!/usr/bin/env python
#Attempt at slurm dependencies. This job should determine the best way
#evenly distribute the prime number sifter across multiple cores

iNumber=5
iFlops=0
#Timestamp here
while iNumber <= 10000:
	for iCount in range(3,(iNumber/2)):

		iFlops+=1
		if (iFlops%100000000==0):
			print"Flops so far: %d" % (iFlops)

	iNumber+=2

#Timestamp here. Start - Stop =
print "It takes %d flops to run the program" % (iFlops)

#Find half of flops

iNumber=3
iQuarterFlops=(iFlops/4)
iHalfFlops=(iFlops/2)
i3QuarterFlops=((iFlops/4)*3)
print "1/4: %d" % (iQuarterFlops)
print "1/2: %d" % (iHalfFlops)
print "3/4: %d" % (i3QuarterFlops)
iFlops=0
while iNumber <= 10000:
	for iCount in range(3,(iNumber/2)):

		iFlops+=1
		if (iFlops>=iQuarterFlops):
			print "1/4 of flops occur before: %d" % (iNumber)
		if (iFlops>=iHalfFlops):
			print "1/2 of flops occur before: %d" % (iNumber)
		if (iFlops>=i3QuarterFlops):
			print "3/4 of flops occur before: %d" % (iNumber)
			break
	if (iFlops>=i3QuarterFlops):
		break
	iNumber+=2
	
print""
print"Dependency complete" 
