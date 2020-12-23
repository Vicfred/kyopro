# uninhm
# https://atcoder.jp/contests/abc061/tasks/abc061_b
# implementation

import strutils, sequtils

var n, m: int
(n, m) = stdin.readLine.split.map parseInt

var cities = newSeq[int](n)

var a, b: int
for _ in 1..m:
  (a, b) = stdin.readLine.split.map parseInt
  inc cities[a-1]
  inc cities[b-1]

for i in cities:
  echo i
