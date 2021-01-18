# uninhm
# https://atcoder.jp/contests/abc158/tasks/abc158_c
# math

import strutils, sequtils, math

const print = echo

var a, b: float
(a, b) = stdin.readLine.split.map parseFloat

if int(a / 0.08 * 0.1) == b.int:
    print(round(a / 0.08 + 0.0001).int)
elif int(b / 0.1 * 0.08) == a.int:
    print(round(b / 0.1 + 0.0001).int)
else:
    print(-1)

