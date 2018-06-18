import strutils
import sequtils
import math


var
  input = stdin.readLine.split.map(parseInt)
  (d, n) = (input[0], input[1])

n = n + n div 100
echo(100^d * n)
