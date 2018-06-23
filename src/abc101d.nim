import strutils
import sequtils
import math


var
  k = stdin.readLine.parseInt
  num = 1
  numstr: string
  sn: int
  nsn: float
  cnt = 0
  nsn_seq = newSeq[float]()
  bool_seq = newSeq[bool]()
  before_bool_seq: seq[bool]

while true:
  before_bool_seq = bool_seq
  sn = 0
  cnt = 0
  numstr = $num
  for i, _ in numstr:
    sn += parseInt($numstr[i])
  nsn = num / sn
  bool_seq = map(nsn_seq, proc (x: float): bool = x <= nsn)
  for i, v in before_bool_seq:
    if not v:
      bool_seq[i] = false
  for v in bool_seq:
    if v:
      cnt.inc
  if cnt == k:
    break
  nsn_seq.add(nsn)
  num.inc

for i, v in bool_seq:
  if v:
    echo(i+1)
