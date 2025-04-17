# vicfred
# https://atcoder.jp/contests/abc127/tasks/abc127_b
# implementation

import strutils, sequtils

var r, d, x2000: int
(r, d, x2000) = stdin.readLine.split.map parseInt

var x = newSeq[int](11)
x[0] = x2000

for i in 1..10:
  x[i] = r*x[i - 1] - d

for i in 1..10:
  echo x[i]

