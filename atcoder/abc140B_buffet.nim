# unihernandez22
# https://atcoder.jp/contests/abc140/tasks/abc140_b
# implementation

import strutils, sequtils

let
  n = stdin.readLine.parseInt
  a = stdin.readLine.split.map(parseInt)
  b = stdin.readLine.split.map(parseInt)
  c = stdin.readLine.split.map(parseInt)

var
  last = -2
  ans = 0
  i: int
for x in a:
  i = x-1
  ans += b[i]
  if last == i-1:
    ans += c[i-1]
  last = i

ans.echo
