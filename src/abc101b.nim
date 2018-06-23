import strutils
import sequtils


var
  n = stdin.readLine
  sn = 0

for i, _ in n:
  sn += parseInt($n[i])

if parseInt(n) mod sn == 0:
  echo("Yes")
else:
  echo("No")
