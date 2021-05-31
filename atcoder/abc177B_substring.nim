# uninhm
# https://atcoder.jp/contests/abc177/tasks/abc177_b
# implementation

import strutils

let
  s = stdin.readLine.strip
  t = stdin.readLine.strip

var
  diff: int
  ans = int.high

for i in 0 .. s.len - t.len:
  diff = 0
  for j in 0 ..< t.len:
    if s[i+j] != t[j]:
      inc diff
  ans = min(ans, diff)

ans.echo
