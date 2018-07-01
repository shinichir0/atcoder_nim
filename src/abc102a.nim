import strutils
import sequtils

var
  n = stdin.readLine.parseInt

if n mod 2 == 0:
  echo(n)
else:
  echo(n*2)

