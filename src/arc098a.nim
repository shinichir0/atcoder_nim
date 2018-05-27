import strutils
import sequtils


discard stdin.readLine.parseInt
var s = newSeq[char]()
let input = stdin.readLine
for i in input:
  s.add(i)

var acc_s = newSeq[int]()
for i, tmp in s:
  if i == 0:
    if tmp == 'E':
      acc_s.add(1)
    else:
      acc_s.add(0)
  else:
    if tmp == 'E':
      acc_s.add(acc_s[i-1]+1)
    else:
      acc_s.add(acc_s[i-1])

var min_num: int
var tmp_s: char
var tmp_acc: int
var left, right: int
var change_num: int
for i, tmp in zip(s, acc_s):
  (tmp_s, tmp_acc) = tmp
  if tmp_s == 'E':
    left = tmp_acc-1
  else:
    left = tmp_acc
  right = acc_s[^1]-tmp_acc
  change_num = i - left + right
  if i == 0:
    min_num = change_num
  else:
    if min_num > change_num:
      min_num = change_num

echo(min_num)
