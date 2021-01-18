# uninhm
# https://atcoder.jp/contests/abc149/tasks/abc149_b
# implementation

import strutils, sequtils

var a, b, k: int
(a, b, k) = stdin.readLine.split.map parseInt

echo max(0, a - k), " ", max(0, b - max(0, k - a))
