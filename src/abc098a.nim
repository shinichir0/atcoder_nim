import sequtils
import strutils


var
  input = stdin.readLine.split.map(parseInt)
  (a, b) = (input[0], input[1])

echo(max(@[a+b, a-b, a*b]))
