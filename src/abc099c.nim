import strutils
import sequtils
import math

var
  n = stdin.readLine.parseInt
  dp = newSeqwith(100010, 100000)
  power: int

dp[0] = 0
for i in 0 .. n:
  power = 1
  while power <= i:
    dp[i] = min(dp[i], dp[i-power] + 1)
    power *= 6
  power = 1
  while power <= i:
    dp[i] = min(dp[i], dp[i-power] + 1)
    power *= 9

echo(dp[n])
