# unihernandez22
# https://atcoder.jp/contests/abc044/tasks/abc044_a
# implementation

import sequtils, strutils

var n, k, x, y: int
(n, k, x, y) = (1..4).mapIt(stdin.readLine.strip.parseInt)

if n > k:
  echo k*x + (n-k)*y
else:
  echo n*x
