#!/usr/bin/env python3
import sys

f = open(sys.argv[1])
lines = f.readlines()
f.close()

for l in lines:
    print(l,end="")
    print("%")
