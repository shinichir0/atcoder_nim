import strutils
import sequtils
import algorithm


type
  Point = tuple[x: int, y:int]

var point: Point
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

proc cmp_graph(a, b: seq[int]): int =
  if a.len > b.len:
    return 1
  elif a.len < b.len:
    return -1
  else:
    return 0

var num_pair = 0
red_points.sort(cmp_point)
blue_points.sort(cmp_point)

var graph = newSeq[seq[int]]()

for i, blue_point in blue_points:
  var tmp = newSeq[int]()
  for j, red_point in red_points:
    if red_point.x < blue_point.x and red_point.y < blue_point.y:
      tmp.add(j)
  graph.add(tmp)

graph.sort(cmp_graph)
var check = repeat(true, n)
for nodes in graph:
  for node in nodes:
    if check[node]:
      check[node] = false
      num_pair.inc
      break
echo(graph)
echo(num_pair)
