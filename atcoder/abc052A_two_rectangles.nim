# unihernandez22
# https://atcoder.jp/contests/abc052/tasks/abc052_a
# implementation

from strutils import split, parseInt
from sequtils import map

var a, b, c, d: int
(a, b, c, d) = stdin.readLine.split.map parseInt

echo max(a*b, c*d)
