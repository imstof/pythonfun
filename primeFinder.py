#!/usr/bin/env python
#Find prime numbers. Test script for cluster/slurm

#	with open("~/primes.txt","a+") as results:
#		results.write("\n %d" % (i))

iNumber=3
iPrimes=1
<<<<<<< HEAD
while iNumber <= 100000000:
=======
while iNumber <= 10000:
>>>>>>> 3ec60372e7cba9bd362c41634dadbd2bf73e7cc2

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
