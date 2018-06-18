import strutils
import sequtils
import math


var
  _ = stdin.readLine.parseInt
  a_seq = stdin.readLine.split.map(parseInt)
  a: int
  total = 0

for tmp in a_seq:
  a = tmp
  while a mod 2 == 0:
    a = a div 2
    total.inc
echo(total)
