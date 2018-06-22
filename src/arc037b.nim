import sequtils
import strutils


var
  nm = stdin.readLine.split.map(parseInt)
  (n, m) = (nm[0], nm[1])
  edges = newSeq[seq[int]]()
  reached = newSeq[bool](n)
  searched: seq[bool]
  flag: bool
  total: int

for _ in 0..<m:
  let input = stdin.readLine.split.map(parseInt)
  edges.add(input)

proc search(x: int, before_node: int) =
  if searched[x]:
    flag = false
    return
  searched[x] = true
  reached[x] = true
  var targets = newSeq[int]()
  for edge in edges:
    if edge[0] == x:
      if edge[1] != before_node:
        targets.add(edge[1])
    elif edge[1] == x:
      if edge[0] != before_node:
        targets.add(edge[0])
  for target in targets:
    search(target, x)

proc edge_search(x: int) =
  searched = newSeq[bool](n)
  search(x, 0)

for i in 1..n:
  if reached[i]:
    continue
  flag = true
  edge_search(i)
  if flag:
    total.inc

echo(total)
