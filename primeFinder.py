#!/usr/bin/env python
#Find prime numbers. Test script for cluster/slurm

"""
for i in range(3,10):
	print i
#	with open("~/primes.txt","a+") as results:
#		results.write("\n %d" % (i))
	isPrime=False
	x=2
	if (i==3):
		isPrime=True
		print "%d is prime!" % (i)
		continue
	elif (i==4):
		print "%d is NOT prime!" % (i)
		continue
	while (x<(i/2)):
		if ((x%2==0)):
			continue
		else:
			isPrime=True
	if (isPrime==True):
		print "%d is prime!" % (i)
	else:
		print "%d is NOT prime!" % (i)
	print "%s" % (isPrime)
"""

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
