# uninhm
# https://atcoder.jp/contests/abc133/tasks/abc133_b
# brute force

import strutils, sequtils
from math import `^`, sqrt

func getDistance(a, b: seq[int]): float =
  for i in 0 ..< a.len:
    result += float(abs(a[i] - b[i]) ^ 2)
  result = sqrt(result)

var n, d: int
(n, d) = stdin.readLine.split.map(parseInt)

var
  x = newSeq[seq[int]](n)
  ans = 0
  distance: float
  

for i in 0 ..< n:
  x[i] = stdin.readLine.split.map(parseInt)

for i in 0 ..< n:
  for j in i+1 ..< n:
    distance = x[i].getDistance(x[j])
    if distance == distance.int.float:
      inc ans

ans.echo
