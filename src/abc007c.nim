import strutils
import sequtils


var
  rc = stdin.readLine.split.map(parseInt)
  (r, c) = (rc[0], rc[1])
  s = stdin.readLine.split.map(parseInt)
  g = stdin.readLine.split.map(parseInt)

s[0] = s[0]-1
s[1] = s[1]-1
g[0] = g[0]-1
g[1] = g[1]-1
r = int(Inf)
