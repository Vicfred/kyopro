# unihernandez22
# https://atcoder.jp/contests/abc045/tasks/abc045_a
# math

import strutils
from sequtils import mapIt

var a, b, h: int
(a, b, h) = (1..3).mapIt(stdin.readLine.strip.parseInt)

echo b * h - (b-a)*h div 2
