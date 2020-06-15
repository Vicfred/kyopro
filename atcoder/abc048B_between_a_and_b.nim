# unihernandez22
# https://atcoder.jp/contests/abc048/tasks/abc048_b
# math

import strutils, sequtils

proc parseInt(x: bool): int =
  if x:
    return 1
  else:
    return 0

var a, b, x: int
(a, b, x) = stdin.readLine.split.map parseInt

echo b div x - a div x + (a mod x == 0).parseInt
