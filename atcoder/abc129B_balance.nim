# uninhm
# https://atcoder.jp/contests/abc129/tasks/abc129_b
# implementation

import strutils, sequtils
from math import sum

let
  n = stdin.readLine.parseInt
  w = stdin.readLine.split.map(parseInt)
  total_sum = w.sum

var
  partial_sum = 0
  ans = int.high

for i in 0 ..< n-1:
  partial_sum += w[i]
  ans = min(ans, abs(partial_sum - total_sum + partial_sum))

ans.echo
