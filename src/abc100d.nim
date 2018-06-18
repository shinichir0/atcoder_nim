import strutils
import sequtils

var
  input = stdin.readLine.split.map(parseInt)
  (n, m) = (input[0], input[1])
  score = newSeq[seq[int]]()
  
  tmp: seq[int]

for _ in 0 ..< n:
  tmp = stdin.readLine.split.map(parseInt)
  score.add(tmp)

echo(score)
