#!/usr/local/opt/python@3.10/bin/python3

import sys

def main(fname):
    with open(fname,'r') as inf:
        t=0
        while True:
            line = inf.readline().rstrip()
            if line == "": break
            overlap=0
            s1 , s2 = [ [int(x) for x in s.split('-')] for s in line.split(',') ]
            #s2 = [ int(a) for a in s2 ]
            if s1[0] <= s2[0] <= s1[1]  or s1[0] <= s2[1]<=s1[1]: overlap=1
            if s2[0] <= s1[0] <= s2[1]  or s2[0] <= s1[1]<=s2[1]: overlap=1
            if overlap : print(line,overlap)
            t +=  overlap
        print(t)

if __name__ == "__main__":
    fname = sys.argv[1]
    main(fname)
