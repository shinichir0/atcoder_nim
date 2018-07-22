import strutils
import sequtils

var
  s = stdin.readLine
  t = stdin.readLine

for _ in s:
  s = join([s[^1..^1], s[0..^2]])
  if (s == t):
    echo("Yes")
    quit()
echo("No")
