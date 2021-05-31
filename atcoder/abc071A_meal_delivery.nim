# uninhm
# https://atcoder.jp/contests/abc071/tasks/abc071_a
# implementation

import strutils, sequtils

var x, a, b: int
(x, a, b) = stdin.readLine.split.map parseInt

if abs(x-a) < abs(x-b):
  echo "A"
else:
  echo "B"
