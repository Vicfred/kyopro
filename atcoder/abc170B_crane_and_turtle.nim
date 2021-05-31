# uninhm
# https://atcoder.jp/contests/abc170/tasks/abc170_b
# implementation

from strutils import split, parseInt
from sequtils import map

var x, y: int
(x, y) = stdin.readLine.split.map(parseInt)

if y mod 2 == 0 and y <= 4*x and y >= 2*x:
  echo "Yes"
else:
  echo "No"

