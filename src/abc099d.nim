import strutils
import sequtils

var
  input = stdin.readLine.split.map(parseInt)
  (n, c) = (input[0], input[1])
  d = newSeq[seq[int]]()
  grid = newSeq[seq[int]]()
  tmp: seq[int]
for _ in 0 ..< c:
  tmp = stdin.readLine.split.map(parseInt)
  d.add(tmp)
for _ in 0 ..< n:
  tmp = stdin.readLine.split.map(parseInt)
  grid.add(tmp)

var
  sum = newSeqWith(3, newSeqWith(c, 0))
  p: int
for q in 0 ..< c:
  for i in 0 ..< n:
    for j in 0 ..< n:
      p = grid[i][j] - 1
      if (i+j+2) mod 3 == 0:
        sum[0][q] += d[p][q]
      elif (i+j+2) mod 3 == 1:
        sum[1][q] += d[p][q]
      elif (i+j+2) mod 3 == 2:
        sum[2][q] += d[p][q]

var
  min_sum = -1
  tmp_sum: int
for i in 0 ..< c:
  for j in 0 ..< c:
    if j == i:
      continue
    for k in 0 ..< c:
      if k == j or k == i:
        continue
      if min_sum == -1:
        min_sum = sum[0][i] + sum[1][j] + sum[2][k]
      else:
        tmp_sum = sum[0][i] + sum[1][j] + sum[2][k]
        if min_sum > tmp_sum:
          min_sum = tmp_sum

echo(min_sum)
