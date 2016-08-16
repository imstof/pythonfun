#!/usr/bin/env python
#Trying out print string and escape characters

print ""
print "Is \"\\\" the escape character?"
print "Yes, yes it is."

listA = [0,1,2,3,4,5]
listA.append(6)
listA.append(7)
listA.append(8)
intA = 1
flA = 4.2

print ""
print(listA[0])
print(listA[1])+(listA[2])
print ""
print"Index 3 is %d" % ((listA[3]))
print"So, Index 4 (%d) plus index 5 (%d) equals %d." % ((listA[4]), (listA[5]), (listA[4])+(listA[5]))
print""
print"...and I can mix in other variables with index 6(%d). Like subtracting flA(%.1f) to get %.1f!" % ((listA[6]), flA, (listA[6])-flA)
print""
print"%d + %.2f - %d = %.2f" % (intA, flA, (listA[7]), intA+flA-(listA[7]))
intB=1000000
print""
#print"Integer formatting? %,1d" % (intB)
