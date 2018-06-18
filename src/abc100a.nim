import strutils
import sequtils


let
  input = stdin.readLine.split.map(parseInt)
  (a, b) = (input[0], input[1])

if a <= 8 and b <= 8:
  echo("Yay!")
else:
  echo(":(")
