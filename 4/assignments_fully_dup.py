#!/usr/local/opt/python@3.10/bin/python3

import sys

def main(fname):
    with open(fname,'r') as inf:
        t=0
        while True:
            line = inf.readline().rstrip()
            if line == "": break
            fullycontained=0
            s1 , s2 = [ s.split('-') for s in line.split(',') ]
            s1 = [ int(a) for a in s1 ]
            s2 = [ int(a) for a in s2 ]
            if s2[0] >= s1[0] and s2[1]<=s1[1]: fullycontained=1
            if s1[0] >= s2[0] and s1[1]<=s2[1]: fullycontained=1
            if fullycontained : print(line,fullycontained)
            #print(line,s1,s2,fullycontained)
            t +=  fullycontained
        print(t)

if __name__ == "__main__":
    fname = sys.argv[1]
    main(fname)
