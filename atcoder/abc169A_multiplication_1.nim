# uninhm
# https://atcoder.jp/contests/abc169/tasks/abc169_a
# implementation

from strutils import split, parseInt
from sequtils import map

var a, b: int
(a, b) = stdin.readLine.split.map(parseInt)

echo a * b
