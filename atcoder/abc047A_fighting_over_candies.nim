# unihernandez22
# https://atcoder.jp/contests/abc047/tasks/abc047_a
# implementation

import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map parseInt

if (a+b+c) mod 2 == 0 and (a+b+c) div 2 in @[a, b, c]:
  echo "Yes"
else:
  echo "No"
