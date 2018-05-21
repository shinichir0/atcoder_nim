import strutils
import algorithm

var a = 7
for i in toBin(a, 12).reversed:
  echo(i)
