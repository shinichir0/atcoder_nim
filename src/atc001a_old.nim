import strutils
import sequtils


let hw = stdin.readLine.split.map(parseInt)
let (h, w) = (hw[0], hw[1])
var grid = newSeq[seq[char]]()
var reached = newSeqWith(h, newSeq[bool](w))
var s, g: array[0..1, int]
var tmp: seq[char]
for i in 0 ..< h:
  let input = stdin.readLine
  tmp = newSeq[char]()
  for j, c in input:
    if c == 's':
      s = [i, j]
    if c == 'g':
      g = [i, j]
    tmp.add(c)
  grid.add(tmp)

proc search(x, y: int) =
  if x < 0 or w <= x or y < 0 or h <= y or grid[y][x] == '#':
    return
  elif reached[y][x]:
    return
  else:
    reached[y][x] = true
    search(x + 1, y)
    search(x - 1, y)
    search(x, y + 1)
    search(x, y - 1)

search(s[0], s[1])
if reached[g[0]][g[1]]:
  echo("Yes")
else:
  echo("No")



