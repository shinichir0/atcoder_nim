import strutils
import sequtils
import tables
import algorithm


let n = stdin.readLine.parseInt
let x = stdin.readLine.split.map(parseInt)
let center = n div 2 - 1

let sorted_x = sorted(x, system.cmp[int])
for v in x:
  if sorted_x[center] >= v:
    echo(sorted_x[center+1])
  else:
    echo(sorted_x[center])
