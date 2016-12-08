#!/usr/bin/env python

#spawn many procs for testing

import timeit
import subprocess

#while true
'''
for i in range(0, 16):
	t = timeit.default_timer()
	x=2**2**20
	y=(str(x))[0]
	z=(str(x))[-1]
	print "%s:%s ... %s" % (i, y, z)
	elapsed = timeit.default_timer()- t
	print "%s:%d" % (i, elapsed)
'''

for i in range(0, 16):
	t = timeit.default_timer()
	subprocess.check_call('echo "Hi!"')
#	subprocess.check_call('echo $(time echo "2^2^20" | bc 1>/dev/null)')
#	x = subprocess.check_call(["echo $(time echo "2^2^20" | bc 1/dev/null)"])
	elapsed = timeit.default_timer()- t
