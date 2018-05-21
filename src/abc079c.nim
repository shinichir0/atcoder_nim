import strutils
import sequtils
import math


var s = stdin.readLine
var index = -1
var total: int
var answer: string

var count = int(pow(2.0, 4.0))
var tmp: int
var op: int
var stock: int
for i in 0 ..< count:
  total = 0
  tmp = i
  stock = s[0..0].parseInt
  for c in 1 ..< s.len:
    op = tmp mod 2
    tmp = tmp div 2
    if op == 0:
      total += stock
      stock = 0
      stock += s[c..c].parseInt
    else:
      total += stock
      stock = 0
      stock -= s[c..c].parseInt
  total += stock
  if total == 7:
    index = i
    break

tmp = index
for i in 0 ..< 4:
  answer.add($s[i])
  op = tmp mod 2
  tmp = tmp div 2
  if i == 3:
    answer.add($'=')
    answer.add($'7')
    break
  if op == 0:
    answer.add($'+')
  else:
    answer.add($'-')

echo(answer)
