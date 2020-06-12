# unihernandez22
# https://atcoder.jp/contests/abc043/tasks/abc043_b
# greedy

import strutils

var s = stdin.readLine.strip

var i = 1
while i < s.len:
  if s[0] == 'B':
    s = s[1..<s.len]
  elif s[i] == 'B':
    s[i-1..i] = ""
    i = max(i-2, 0)
  else:
    inc i

s.echo
