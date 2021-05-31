# uninhm
# https://atcoder.jp/contests/abc047/tasks/abc047_b
# simulation

import strutils, sequtils

var w, h, n: int
(w, h, n) = stdin.readLine.split.map parseInt

var borders = @[0, w, 0, h]

var x, y, a: int
for _ in 1..n:
  (x, y, a) = stdin.readLine.split.map parseInt
  if a == 1:
    borders[a-1] = max(borders[a-1], x)
  elif a == 2:
    borders[a-1] = min(borders[a-1], x)
  elif a == 3:
    borders[a-1] = max(borders[a-1], y)
  elif a == 4:
    borders[a-1] = min(borders[a-1], y)

echo max(0, borders[1]-borders[0])*max(0, borders[3]-borders[2])
