# unihernandez22
# https://atcoder.jp/contests/abc136/tasks/abc136_c
# implementation

import strutils, sequtils

var n = stdin.readLine.parseInt
var h = stdin.readLine.split.map parseInt

var ans = "Yes"
var m = h[0]
for i in 1 ..< h.len:
  if h[i] < m:
    ans = "No"
    break
  m = max(m, h[i]-1)

echo ans
