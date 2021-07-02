# uninhm
# https://atcoder.jp/contests/abc190/tasks/abc190_b
# implementation

import strutils, sequtils

var n, s, d: int64
(n, s, d) = stdin.readLine.split.map(parseInt)

var x, y: int64
for i in 1 .. n:
  (x, y) = stdin.readLine.split.map(parseInt)
  if x < s and y > d:
    break
  if i == n:
    echo "No"
    quit()

echo "Yes"
