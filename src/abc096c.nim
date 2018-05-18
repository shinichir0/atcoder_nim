import strutils
import sequtils
import tables


let input = stdin.readLine.split.map(parseInt)
let (height, width) = (input[0], input[1])

var grid = newSeq[seq[bool]]()
var line: seq[bool]
for _ in 0 ..< height:
  let input = stdin.readLine
  line = newSeq[bool]()
  for c in input:
    if c == '#':
      line.add(true)
    elif c == '.':
      line.add(false)
  grid.add(line)

var flag = true
for i in 0 ..< height:
  for j in 0 ..< width:
    if not grid[i][j]:
      continue
    else:
      # check up
      if i > 0:
        if grid[i-1][j]:
          continue
      # check left
      if j > 0:
        if grid[i][j-1]:
          continue
      # check bottom
      if i < height-1:
        if grid[i+1][j]:
          continue
      # check right
      if j < width-1:
        if grid[i][j+1]:
          continue
      flag = false
      break
    if not flag:
      break

if flag:
  echo("Yes")
else:
  echo("No")
