import strutils
import sequtils


var
  input = stdin.readLine.split.map(parseInt)
  x = stdin.readLine.split.map(parseInt)
  (n, d) = (input[0], input[1])
  before, after: int
  count: int

var j: int

proc before_search(i: int): int =
  var
    tmp = i div 2
    left = 0
    right = i
  while true:
    if tmp == i:
      return 0
    if x[i] - x[tmp] <= d:
      if tmp == 0:
        return i
      elif x[i] - x[tmp-1] > d:
        return i - tmp
      else:
        right = tmp
        tmp = (tmp - left) div 2
    else:




for i in 0 ..< n:
  j = 1
  before = 0
  after = 0
  while i - j >= 0 or i + j < n:
    if i - j >= 0:
      if x[i] - x[i - j] <= d:
        before.inc
    if i + j < n:
      if x[i + j] - x[i] <= d:
        after.inc
    j.inc
  count += before * after - after * (after - 1) div 2

echo(count)
