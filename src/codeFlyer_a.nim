import strutils
import sequtils


let
  a = stdin.readLine.parseInt
  b = stdin.readLine.parseInt

echo(a div b * b)
