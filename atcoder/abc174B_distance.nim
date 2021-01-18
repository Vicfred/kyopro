# uninhm
# https://atcoder.jp/contests/abc174/tasks/abc174_b
# implementation

from sequtils import map
from strutils import parseInt, split

var n, d, ans, x, y: int
(n, d)= stdin.readLine.split.map(parseInt)

for _ in 1 .. n:
  (x, y) = stdin.readLine.split.map(parseInt)
  if x*x + y*y <= d*d: ans.inc

ans.echo
