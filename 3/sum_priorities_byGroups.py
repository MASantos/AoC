#!/usr/local/opt/python@3.10/bin/python3
import sys

print(list(map(ord,['a','z','A','Z'])))

def priority(c):
    o = ord(c) 
    if o < 97: return o-64+26
    return o-96

def main(fname):
    with open(fname,'r') as inf:
        tp  = 0
        while True:
            glines=[]
            glines.append(inf.readline().rstrip())
            if glines[0] == "" : break
            glines.append(inf.readline().rstrip())
            glines.append(inf.readline().rstrip())
            dups = { c for c in glines[0] if c in glines[1] and c in glines[2] }
            rp = sum(list(map(priority,dups)))        
            print(glines, ' :: ',dups, list(map(priority,dups)) )
            tp += rp
        print(tp)

if __name__ == '__main__':
    fname = sys.argv[1]
    main(fname)
