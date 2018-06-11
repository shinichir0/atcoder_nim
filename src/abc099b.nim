import strutils
import sequtils

var
  input = stdin.readLine.split.map(parseInt)
  (a, b) = (input[0], input[1])
  diff = b - a
  a_start = 0

for i in 0 ..< diff:
  a_start += i

echo(a_start - a)
