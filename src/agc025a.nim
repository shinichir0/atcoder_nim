import strutils
import sequtils


var
  n = stdin.readLine.parseInt
  min_total: int
  total: int
  a, b: int

for i in 1 .. (n div 2):
  total = 0
  a = i
  b = n - i
  while a != 0:
    total += a mod 10
    a = a div 10
  while b != 0:
    total += b mod 10
    b = b div 10
  if i == 1:
    min_total = total
  elif min_total > total:
    min_total = total

echo(min_total)
