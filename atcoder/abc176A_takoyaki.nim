# uninhm
# https://atcoder.jp/contests/abc176/tasks/abc176_a
# math

import strutils, sequtils

var n, x ,t: int
(n, x, t) = stdin.readLine.split.map(parseInt)

echo (n + x - 1) div x * t
