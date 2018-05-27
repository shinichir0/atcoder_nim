import strutils
import sequtils
import sets


let n = stdin.readLine.parseInt
var s: string
s = stdin.readLine
var left, right: string
var left_set, right_set, dup_set = initSet[char]()
var max_num, set_len = 0
for i in 1 ..< n:
  left = s[0..i-1]
  right = s[i..^1]
  left_set = toSet(left)
  right_set = toSet(right)
  dup_set = intersection(left_set, right_set)
  set_len = 0
  for _ in dup_set:
    set_len.inc
  if max_num < set_len:
    max_num = set_len

echo(max_num)


