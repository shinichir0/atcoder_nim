import strutils
import sequtils

var
  n = stdin.readLine.parseInt
  a = stdin.readLine.split.map(parseInt)

echo(max(a) - min(a))
