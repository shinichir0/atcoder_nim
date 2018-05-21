import strutils
import sequtils
import math


let input = stdin.readLine.split.map(parseInt)
var (a, b, c, k) = (float(input[0]), float(input[1]), float(input[2]), input[3])

var result: float
if k mod 2 == 0:
  result = a - b
else:
  result = b - a
if result > 10e18:
  echo("Unfair")
else:
  echo(int(result))
