#!/usr/bin/python
#Find prime numbers. Test script for cluster/slurm

#	with open("~/primes.txt","a+") as results:
#		results.write("\n %d" % (i))
import timeit

t=timeit.default_timer()

iNumber=3
iPrimes=1
#iCount=0
<<<<<<< HEAD:olde/primeFinder.py
while iNumber <= 100000:
=======
while iNumber <= 100000000:
>>>>>>> e34fe888a9a4fb7641cea7079010debef06c98eb:primeFinder.py

	bIsPrime=True
#	print"Number is: %d" % (iNumber)

	for iCount in range(3,(iNumber/2)):

#		print"Count is: %d" % (iCount)
		if (iNumber%iCount==0):
			bIsPrime=False
			break		#should only break current check

	if (bIsPrime==True):
		iPrimes+=1
#		iCount+=1
		print""
		print"%d is a prime number!" % (iNumber)
	else:
		print".",

#	if (iCount==100):
#		print"Total Primes Found: %d" % (iPrimes)

	iNumber+=2

print ""
print "Total Primes Found: %d" % (iPrimes)

v=timeit.default_timer()
elapsed=timeit.default_timer()-t
print "timeit: %d" % (v)
print "time elapsed: %d" % (elapsed)
print "t: %d" % (t)
