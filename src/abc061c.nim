import strutils
import sequtils
import math


var s = stdin.readLine
var total = 0

var count = int(pow(2.0, float(s.len-1)))
var tmp: int
var op: int
var stock: int
for i in 0 ..< count:
  tmp = i
  stock = s[0..0].parseInt
  for c in 1 ..< s.len:
    op = tmp mod 2
    tmp = tmp div 2
    if op == 0:
      stock = stock * 10 + s[c..c].parseInt
    else:
      total += stock
      stock = s[c..c].parseInt
  total += stock

echo(total)
