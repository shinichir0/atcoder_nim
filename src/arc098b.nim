import strutils
import sequtils
import math


let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map(parseInt)
var total = 0

var a_xor, a_sum = 0
var l, r = 0
var forward = true
while l < n:
  while r < n and l <= r:
    if forward:
      a_xor = a_xor xor a[r]
      a_sum += a[r]
    else:
      a_xor = a_xor xor a[l-1]
      a_sum -= a[l-1]
    if a_xor != a_sum:
      total += r-l
      break
    elif r == n-1:
      total += r-l + 1
      break
    r.inc
    forward = true
  l.inc
  forward = false
echo(total)
