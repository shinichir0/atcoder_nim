import sets
import strutils
import sequtils
import algorithm

let s = stdin.readLine
let K = stdin.readLine.parseInt

var values = newSeq[string]()

for i in 0 ..< s.len:
  for j in 0 ..< K:
    values.add(s.substr(i, i+j))

values.sort(system.cmp[string])
var unique_values = values.toOrderedSet()
var i = 1
for v in unique_values.items():
  if i == K:
    echo(v)
    break
  i.inc

