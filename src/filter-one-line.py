#!/usr/bin/env python3
import sys

f = open(sys.argv[1], "r")
fortunes = f.read().split("\n%\n")
f.close()

fortunes = list(filter(lambda f: not "\n" in f, fortunes))

f = open(sys.argv[1], "w")
f.write("\n%\n".join(fortunes))
f.close()
