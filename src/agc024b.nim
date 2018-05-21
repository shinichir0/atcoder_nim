import strutils
import sequtils

let n = stdin.readLine.parseInt
var visited = newSeq[int](n+1)
var tmp: int
for i in 0 ..< n:
  tmp = stdin.readLine.parseInt
  if tmp == 0:
    visited[0] = 1
  else:
    visited[tmp] = visited[tmp-1] + 1
echo(n - max(visited))


