# unihernandez22
# https://atcoder.jp/contests/abc148/tasks/abc148_b
# implementation

from strutils import split
from sequtils import zip


discard stdin.readLine

var s, t: string
(s, t) = stdin.readLine.split

for (a, b) in zip(s, t):
  stdout.write $a & $b
echo()
