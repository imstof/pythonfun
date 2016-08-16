#!/usr/bin/env python
#Find prime numbers. Test script for cluster/slurm

#	with open("~/primes.txt","a+") as results:
#		results.write("\n %d" % (i))

iNumber=3
iPrimes=1
while iNumber <= 100000:

	bIsPrime=True
#	print"Number is: %d" % (iNumber)

	for iCount in range(3,(iNumber/2)):

#		print"Count is: %d" % (iCount)
		if (iNumber%iCount==0):
			bIsPrime=False

	if (bIsPrime==True):
		iPrimes+=1
		print""
		print"%d is a prime number!" % (iNumber)
	else:
		print".",

	iNumber+=2

print ""
print "Total Primes Found: %d" % (iPrimes)
