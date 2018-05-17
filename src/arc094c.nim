import strutils
import sequtils
import math


let x = stdin.readLine.split.map(parseInt)
let max_x = max(x)

let y = x.map(proc(x: int): int = max_x - x)
var total = 0
var a, b = 0
for t in y:
  if t == 0:
    continue
  elif a == 0:
    a = t
  else:
    b = t

if a mod 2 != 0 and b mod 2 != 0:
  if a >= b:
    total = b + (a - b) div 2
  else:
    total = a + (b - a) div 2
elif a mod 2 == 0 and b mod 2 == 0:
  total = (a + b) div 2
elif a mod 2 == 0:
  total = a div 2 + (b + 1) div 2 + 1
else:
  total = b div 2 + (a + 1) div 2 + 1

echo(total)
