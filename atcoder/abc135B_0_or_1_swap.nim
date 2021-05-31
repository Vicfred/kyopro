# uninhm
# https://atcoder.jp/contests/abc135/tasks/abc135_b
# implementation

import strutils, sequtils, algorithm

let
  n = stdin.readLine.parseInt
  p = stdin.readLine.split.map parseInt

var p2 = p
p2.sort

var diff = 0
for i in 0 ..< n:
  if p[i] != p2[i]:
    inc diff
  if diff > 2:
    break

if diff > 2 or diff == 1:
  echo "NO"
else:
  echo "YES"
