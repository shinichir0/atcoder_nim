import strutils
import sequtils
import math

var
  _ = stdin.readLine.parseInt()
  a_seq = stdin.readLine.split.map(parseInt)
  total = 0
  gcd_num: int
  lcm_num: int

for i, v in a_seq:
  if i == 0:
    lcm_num = v
  else:
    gcd_num = gcd(lcm_num, v)
    lcm_num = (lcm_num * v) div gcd_num

for a in a_seq:
  total += (lcm_num-1) mod a
echo(total)
