import macros
import strutils
import sequtils


let input = stdin.readLine.split.map(parseInt)
let (a, b, c, x, y) = (input[0], input[1], input[2], input[3], input[4])
var total: int
if c * 2 <= a and c * 2 <= b:
  if x >= y:
    total = 2 * c * x
  else:
    total = 2 * c * y
elif c * 2 >= a and c * 2 <= b:
  if x >= y:
    total = 2 * c * y + a * (x - y)
  else:
    total = 2 * c * y
elif c * 2 <= a and c * 2 >= b:
  if x >= y:
    total = 2 * c * x
  else:
    total = 2 * c * x + b * (y - x)
elif a + b >= c * 2:
  if x >= y:
    total = 2 * c * y + a * (x - y)
  else:
    total = 2 * c * x + b * (y - x)
else:
  total = a * x + b * y

echo(total)
