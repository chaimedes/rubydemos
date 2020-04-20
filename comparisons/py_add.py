#!/usr/bin/python

import sys

#filename = sys.argv[1]

#numbers = open(filename).read().split()
#numbers = list(map(lambda n: int(n), numbers))

sum = 0

for n in list(map(lambda n: int(n), open(sys.argv[1]).read().split())):
    sum = sum + n

print sum
