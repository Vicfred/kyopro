# unihernandez22
# https://atcoder.jp/contests/abc161/tasks/abc161_c
# math

import strutils, sequtils

var n, k: int
(n, k) = stdin.readLine.split.map parseInt

echo min(n mod k, k - n mod k)
