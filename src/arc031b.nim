import strutils
import sequtils


var
  field = newSeq[seq[char]]()
  tmp: seq[char]
  cnt: int
  start = @[-1, -1]

for i in 0 ..< 10:
  let input = stdin.readLine
  tmp = newSeq[char]()
  for k, j in input:
    if j == 'o':
      cnt.inc
      if start == @[-1, -1]:
        start = @[k, i]
    tmp.add(j)
  field.add(tmp)

proc field_search(sfield: seq[seq[char]], answer: int): bool =
  var
    cnt_circle = 0
    reached = newSeqWith(10, newSeq[bool](10))
  proc search(x, y: int) =
    if x < 0 or x >= 10 or y < 0 or y >= 10 or sfield[y][x] == 'x':
      return
    if reached[y][x]:
      return
    if sfield[y][x] == 'o':
      cnt_circle.inc
    reached[y][x] = true
    search(x+1, y)
    search(x-1, y)
    search(x, y+1)
    search(x, y-1)
  search(start[0], start[1])
  if cnt_circle == answer:
    return true
  else:
    return false

var exfield: seq[seq[char]]
if field_search(field, cnt):
  echo("YES")
  quit()
for i in 0 ..< 10:
  for j in 0 ..< 10:
    exfield = field
    if exfield[i][j] == 'o':
      continue
    else:
      exfield[i][j] = 'o'
    if field_search(exfield, cnt+1):
      echo("YES")
      quit()
echo("NO")
