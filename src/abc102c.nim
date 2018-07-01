import strutils
import sequtils
import math
import algorithm

var
  n = stdin.readLine.parseInt
  a = stdin.readLine.split.map(parseInt)
  arange = toSeq(countup(1, n))
  disa = newSeq[int]()
  plus, minus = 0

for z in zip(a, arange):
  var 
    (za, zar) = z
  disa.add(za-zar)
var
  disa_sort = disa.sorted(system.cmp[int])

echo(disa_sort.map(proc(x: int): int = abs(x - disa_sort[n div 2])).sum)
