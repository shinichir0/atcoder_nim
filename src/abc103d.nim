import strutils
import sequtils

var
  nm = stdin.readLine.split.map(parseInt)
  (n, m) = (nm[0], nm[1])
  input: seq[int]
  nrange = toSeq(countup(1, n))

for _ in 0 ..< m:
  input = stdin.readLine.split.map(parseInt)
  
