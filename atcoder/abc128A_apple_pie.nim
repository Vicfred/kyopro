# unihernandez22
# https://atcoder.jp/contests/abc128/tasks/abc128_a
# implementation

import strutils, sequtils

var a, p: int
(a, p) = stdin.readLine.split.map(parseInt)

echo (a * 3 + p) div 2

