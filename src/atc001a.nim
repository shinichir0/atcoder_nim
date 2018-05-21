import strutils
import sequtils


let hw = stdin.readLine.split.map(parseInt)
let (h, w) = (hw[0], hw[1])
var grid = newSeq[seq[char]]()
var reached = newSeqWith(w, newSeq[bool](10))
var s, g: array[0..1, int]
var tmp: seq[char]
for i in 0 ..< h:
  let input = stdin.readLine
  tmp = newSeq[char]()
  for j, c in input:
    if c == 's':
      s = [j, i]
    if c == 'g':
      g = [j, i]
    tmp.add(c)
  grid.add(tmp)

var stack = newSeq[array[0..1, int]]()
var target: array[0..1, int]
stack.add(s)
reached[s[0]][s[1]] = true
while true:
  if stack.len == 0:
    echo("No")
    break
  else:
    target = stack.pop
  if target == g:
    echo("Yes")
    break
  let tx = target[0]
  let ty = target[1]
  if tx > 0:
    if not (grid[ty][tx-1] == '#' or reached[tx-1][ty]):
      stack.add([tx-1, ty])
      reached[tx-1][ty] = true
  if ty > 0:
    if not (grid[ty-1][tx] == '#' or reached[tx][ty-1]):
      stack.add([tx, ty-1])
      reached[tx][ty-1] = true
  if tx < w-1:
    if not (grid[ty][tx+1] == '#' or reached[tx+1][ty]):
      stack.add([tx+1, ty])
      reached[tx+1][ty] = true
  if ty < h-1:
    if not (grid[ty+1][tx] == '#' or reached[tx][ty+1]):
      stack.add([tx, ty+1])
      reached[tx][ty+1] = true
