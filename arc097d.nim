import strutils, sequtils
import typetraits


proc score(p: seq, pa: seq): (int, seq) =
  result = (0, newSeq[bool])
  for t in zip(p, pa):
    if t[0] == t[1]:
      result[0].inc
      result[1].add(true)
    else:
      result[1].add(false)

let tmp = stdin.readLine.splitWhitespace.map(parseInt)
let (N, M) = (tmp[0], tmp[1])
let p = stdin.readLine.splitWhitespace.map(parseInt)
let pa = toSeq(countup(1, N))
var operator = newSeq[seq[int]]()
for _ in 0 ..< M:
  operator.add(stdin.readLine.splitWhitespace.map(parseInt)) 

var target = newSeq[newSeq[int]()](N+1)

echo(score(p, pa))
for op in operator:
  target[op[0]].add(op[1])
  target[op[1]].add(op[0])

echo(target)


