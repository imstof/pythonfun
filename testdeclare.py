#!/usr/bin/env python
#Declare variable on one line

a, b, c = 3, 4.2, "Hi!"
d, e, f = 7, 8, 9

sList = ["zero","one","two","three"]
sList.append("four")

print""
print(sList[0])
print"%s %s and %s" % ((sList[1]),(sList[2]),(sList[3])+(sList[4]))

sList.append(5)
sList.append(6)
print""
print"%d + %d = %d" % ((sList[5]),(sList[6]),(sList[5])+(sList[6]))

sMult = "na " * 10 + "Batman"
print""
print"%s" % (sMult)

lOdd = [1,3,5,7,9]
lEven = [0,2,4,6,8]
lAll = lOdd + lEven
print""
print(lAll)
print""
print"Next up: String manipulation!"
print len(sList[0])
print "%s" % (len(sList[1]))
print "Can we operate on string len return?"
print "Like: %d * %d = %d" % (len(sList[2]),len(sList[3]),len(sList[2])*len(sList[3]))
print "Yes!"
print sList[0].count("z")
print (sList[3])[::-1]
sList.append("This is the SEVENTH index!!")
print sList[7]
print (sList[7])[::-2]
print ""
for i in sList:
	print i

#["six" if i==6 else i for i in sList]
#["seven" if i==7 else i for i in sList]
"""for i in sList:
	if i==6:
		i="six"
	elif i==7:
		i="seven"
	else:
		i=i
for i in sList:
	print i
"""
#for i in sList:
#	print i.count("o")
#	oCount+=i.count("o")
#	print oCount
