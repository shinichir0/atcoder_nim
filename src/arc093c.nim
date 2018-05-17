import strutils
import sequtils


let n = stdin.readLine.parseInt
let input = stdin.readLine.split.map(parseInt)

var point_list = concat(@[0], input, @[0])
proc cal_trans(point_list: seq): int =
  result = 0
  var previous_point: int
  for i, t in point_list:
    if i == 0:
      previous_point = t
      continue
    result += abs(t - previous_point)
    previous_point = t
  return

var total = cal_trans(point_list)

var three_point, two_point: seq[int]
for i, v in point_list:
  if i == 0 or i == point_list.len-1:
    continue
  three_point = point_list[i-1..i+1]
  two_point = @[three_point[0], three_point[2]]
  echo(total - cal_trans(three_point) + cal_trans(two_point))


