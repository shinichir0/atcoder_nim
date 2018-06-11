import strutils
import sequtils
import math

var
  n = stdin.readLine.parseInt
  total = 0
  six_pow, nine_pow: int
  n_tmp: int
  i: int

while true:
  n_tmp = n
  nine_pow = 1
  i = 1
  while n div nine_pow != 0:
    nine_pow = int(pow(9.0, float(i)))
    i.inc
  nine_pow = nine_pow div 9

  n = n_tmp
  six_pow = 1
  i = 1
  while n div six_pow != 0:
    six_pow = int(pow(6.0, float(i)))
    i.inc
  six_pow = six_pow div 6

  if nine_pow == 1 and six_pow == 1:
    total += n
    break
  elif n >= 12 and n <= 14:
    n = n - six_pow
    total.inc
  else:
    if nine_pow > six_pow:
      n = n - nine_pow
      total.inc
    else:
      n = n - six_pow
      total.inc
echo(total)
