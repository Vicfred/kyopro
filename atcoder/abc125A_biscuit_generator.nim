# uninhm
# https://atcoder.jp/contests/abc125/tasks/abc125_a
# math

import strutils, sequtils

var a, b, t: int
(a, b, t) = stdin.readLine.split.map parseInt

echo t div a * b
