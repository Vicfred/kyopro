# uninhm
# https://atcoder.jp/contests/abc132/tasks/abc132_b
# brute force

import strutils, sequtils
from algorithm import sort

let
  n = stdin.readLine.parseInt
  p = stdin.readLine.split.map(parseInt)

var
  ans = 0
  three: array[3, int]

for i in 1 ..< n-1:
  three = [p[i], p[i-1], p[i+1]]
  three.sort
  if three[1] == p[i]:
    inc ans

ans.echo
