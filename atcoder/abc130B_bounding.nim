# unihernandez22
# https://atcoder.jp/contests/abc130/tasks/abc130_b
# simulation

import strutils, sequtils

var n, x: int
(n, x) = stdin.readLine.split.map(parseInt)

let l = stdin.readLine.split.map(parseInt)

var
  d = newSeq[int](n+1)
  ans: int

for i in 1 .. n:
  d[i] = d[i-1] + l[i-1]
  if d[i] > x: break
  ans = i

echo ans + 1
