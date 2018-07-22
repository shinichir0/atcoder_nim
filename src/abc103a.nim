import strutils
import sequtils

var
  a = stdin.readLine.split.map(parseInt)

echo(min([
  abs(a[1]-a[0]) + abs(a[2]-a[1]),
  abs(a[2]-a[0]) + abs(a[1]-a[2]),
  abs(a[2]-a[1]) + abs(a[0]-a[2]),
  abs(a[0]-a[1]) + abs(a[2]-a[0]),
  abs(a[0]-a[2]) + abs(a[1]-a[0]),
  abs(a[1]-a[2]) + abs(a[0]-a[1]),
  ]))
