# unihernandez22
# https://atcoder.jp/contests/abc134/tasks/abc134_b
# implementation

import strutils, sequtils

var n, d: int
(n, d) = stdin.readLine.split.map parseInt

var
  i = d+1
  ans = 1

while i+d < n:
  inc ans
  i += 2*d+1

ans.echo
