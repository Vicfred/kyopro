# unihernandez22
# https://atcoder.jp/contests/abc143/tasks/abc143_b
# greedy

import strutils, sequtils

let
  n = stdin.readLine.parseInt
  d = stdin.readLine.split.map(parseInt)

var
  csum = newSeq[int](n)
  ssum = 0
  ans = 0

for i in 1 .. n:
  csum[n - i] = ssum
  ssum += d[n - i]

for i, elem in d:
  ans += elem * csum[i]

ans.echo
