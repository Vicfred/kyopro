# uninhm
# https://atcoder.jp/contests/abc176/tasks/abc176_c
# greedy

import strutils, sequtils

discard stdin.readLine
let a = stdin.readLine.split.map(parseInt)

var
  ans = 0
  last = a[0]
for i in a:
  if i < last:
    ans += last - i
  else:
    last = i

ans.echo
