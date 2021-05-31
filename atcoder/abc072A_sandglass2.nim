# uninhm
# https://atcoder.jp/contests/abc072/tasks/abc072_a
# implementation

from strutils import split, parseInt
from sequtils import map

var x, t: int
(x, t) = stdin.readLine.split.map(parseInt)

if x >= t:
  echo x-t
else:
  echo 0
