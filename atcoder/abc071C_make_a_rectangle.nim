# unihernandez22
# https://atcoder.jp/contests/abc071/tasks/arc081_a
# implementation

from algorithm import sort, reversed
from strutils import split, parseInt
from sequtils import map
import tables

discard stdin.readLine
var a = stdin.readLine.split.map parseInt

a.sort cmp
var b = initTable[int, int]()

for i in a:
  b[i] = b.getOrDefault(i) + 1

var height: int
var width: int
for i in a.reversed:
  if b[i] >= 2:
    if  height == 0: height = i
    elif width == 0: width = i
    b[i] -= 2

echo width * height

