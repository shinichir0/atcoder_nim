import strutils
import sequtils
import algorithm
import queues


type
  Point = tuple[x: int, y:int]
  Node = tuple[blue: int, red: int]

var point: Point
var node: Node
var red_points = newSeq[Point]()
var blue_points = newSeq[Point]()
let n = stdin.readLine.parseInt
for i in 0 ..< n:
  let line = stdin.readLine.split.map(parseInt)
  point = (line[0], line[1])
  red_points.add(point)
for i in 0 ..< n:
  let line = stdin.readLine.split.map(parseInt)
  point = (line[0], line[1])
  blue_points.add(point)

proc cmp_point(a, b: Point): int =
  if a.x > b.x:
    return 1
  elif a.x < b.x:
    return -1
  else:
    if a.y > a.y:
      return 1
    elif a.y < b.y:
      return -1
    else:
      return 0

var num_pair = 0
red_points.sort(cmp_point)
blue_points.sort(cmp_point)

var nodes = newSeq[Node]()
for i, blue_point in blue_points:
  for j, red_point in red_points:
    if red_point.x < blue_point.x and red_point.y < blue_point.y:
      node = (i, j)
      nodes.add(node)

var visited = repeat(false, 2*n)

echo(nodes)
for i in 0 ..< n:
  var color = "blue"
  var flag = false
  var now = i
  var tmp_visited = initQueue[int]()
  var previous = -1
  while not flag:
    echo(now)
    flag = true
    if color == "blue":
      for node in nodes:
        if node.blue == now:
          if node.red + n in tmp_visited:
            continue
          if visited[node.red + n]:
            color = "red"
            flag = false
            now = node.red
            previous = -1
            tmp_visited.add(node.blue)
            break
          else:
            visited[i] = true
            visited[node.red + n] = true
            num_pair.inc
            break
    if color == "red":
      for node in nodes:
        if node.red == now:
          if node.blue in tmp_visited:
            continue
          if visited[node.blue]:
            color = "blue"
            flag = false
            now = node.blue
            previous = -1
            tmp_visited.add(node.red + n)
            break
          else:
            continue
      color = "blue"
      flag = false
      previous = now
      now = tmp_visited.pop
echo(num_pair)
