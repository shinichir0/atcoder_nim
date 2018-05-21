import strutils
import sequtils
import algorithm
import math


let nm = stdin.readLine.split.map(parseInt)
let (n, m) = (nm[0], nm[1])
var relation = newSeq[seq[int]]()

var input: seq[int]
for i in 0 ..< m:
  input = stdin.readLine.split.map(parseInt)
  relation.add(input)

var group: seq[int]
var max_num = 1
var known: seq[bool]
var flag: bool
var count: int
for i in 0 ..< int(pow(2.0, float(n))):
  group = newSeq[int]()
  flag = false
  for p, op in toBin(i, n).reversed:
    if op == '1':
      group.add(p+1)
  #echo("group: ", group)
  if max_num < group.len:
    for g in group:
      known = newSeq[bool](n)
      known[g-1] = true
      count = 0
      for r in relation:
        if r[0] == g:
          if r[1] in group:
            known[r[1]-1] = true
        if r[1] == g:
          if r[0] in group:
            known[r[0]-1] = true
      #echo("known: ", known)
      for k in known:
        if k:
          count.inc
      if count != group.len:
        flag = false
        break
      else:
        flag = true
    if flag:
      max_num = group.len

echo(max_num)
