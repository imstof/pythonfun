#!/usr/bin/env python

#Find prime numbers to test load cpus

iNumber=3	#number to check
iPrimes=1	#number of primes found

while iNumber <= 1000000000:

	bIsPrime=True	#toggle when number is found to be prime

	for iCount in range(3,(iNumber/2)):

		if (iNumber%iCount==0):
			bIsPrime=False
			break		#break if not prime
	
	if (bIsPrime==True):		
		iPrimes+=1
		print""
		print"%d is prime" % (iNumber)

	iNumber+=2

print""
print"Total Primes Found: %d" % (iPrimes)
