# unihernandez22
# https://atcoder.jp/contests/abc051/tasks/abc051_b
# brute force

import strutils, sequtils

var k, s: int
(k, s) = stdin.readLine.split.map parseInt

var ans = 0

for x in 0..k:
  for y in 0..k:
    let z = s - x - y
    if z >= 0 and z <= k:
      inc ans

echo ans
