import strutils
import sequtils


var field = newSeq[seq[char]]()
var tmp: seq[char]
for i in 0 ..< 10:
  let input = stdin.readLine
  tmp = newSeq[char]()
  for j in input:
    tmp.add(j)
  field.add(tmp)

proc search(field: seq[seq[char]]): bool =
  return true

var exfield: seq[seq[char]]
block label:
  for i in 0 ..< 10:
    for j in 0 ..< 10:
      exfield = field
      if exfield[i][j] == 'x':
        exfield[i][j] = 'o'
      if search(exfield):
        echo("YES")
        break label
    if i == 9:
      echo("NO")


