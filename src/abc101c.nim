import strutils
import sequtils


var
  nk = stdin.readLine.split.map(parseInt)
  (n, k) = (nk[0], nk[1])
  a = stdin.readLine.split.map(parseInt)
  #visited = newSeqWith(n, false)
  total = 0

#while all(visited, proc (x: bool): bool = return x == true) != true:
n = n - k
total.inc
while n >= 1:
  n = n - k + 1
  total.inc

echo(total)
