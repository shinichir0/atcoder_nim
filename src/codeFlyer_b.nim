import strutils
import sequtils


var
  input = stdin.readLine.split.map(parseInt)
  x = stdin.readLine
  (a, b, n) = (input[0], input[1], input[2])

for behavior in x:
  if behavior == 'S':
    if a > 0:
      a.dec
  elif behavior == 'C':
    if b > 0:
      b.dec
  else:
    if a == 0 and b == 0:
      continue
    elif a >= b:
      a.dec
    else:
      b.dec

echo(a)
echo(b)
