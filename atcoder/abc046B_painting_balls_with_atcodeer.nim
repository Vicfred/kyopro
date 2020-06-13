# unihernandez22
# https://atcoder.jp/contests/abc046/tasks/abc046_b
# math

proc binpow(a: int, b: int): int =
  if b == 0: return 1
  let res = binpow(a, b div 2)
  if b mod 2 == 1:
    return res * res * a
  else:
    return res * res

import strutils, sequtils

var n, k: int
(n, k) = stdin.readLine.split.map parseInt

echo binpow(k-1, n-1) * k
