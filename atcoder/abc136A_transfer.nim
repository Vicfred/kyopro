# uninhm
# https://atcoder.jp/contests/abc136/tasks/abc136_a
# implementation

import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map parseInt

echo max(0, c-a+b)
