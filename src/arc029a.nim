import strutils
import sequtils
import math


let n = stdin.readLine.parseInt
var t = newSeq[int]()
for i in 0 ..< n:
  t.add(stdin.readLine.parseInt)

var time1, time2: int
var min_time: int
var tmp, op: int

for i in 0 ..< int(pow(2.0, float(n))):
  tmp = i
  time1 = 0
  time2 = 0
  for ti in t:
    op = tmp mod 2
    tmp = tmp div 2
    if op == 0:
      time1 += ti
    else:
      time2 += ti
  let max_time = max(time1, time2)
  if i == 0:
    min_time = max_time
    continue
  elif min_time > max_time:
    min_time = max_time

echo(min_time)
