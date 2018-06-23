import strutils
import sequtils


var
  input = stdin.readLine
  total = 0

for i in input:
  if i == '+':
    total.inc
  elif i == '-':
    total.dec

echo(total)
