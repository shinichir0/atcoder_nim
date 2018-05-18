import strutils
import sequtils


let input = stdin.readLine.split.map(parseInt)
let (a, b, k) = (input[0], input[1], input[2])

for i in countup(0, k-1):
  if a+i <= (a+b) div 2:
    echo(a+i)
for i in countdown(k-1, 0):
  if b-i > (a+b) div 2:
    echo(b-i)
