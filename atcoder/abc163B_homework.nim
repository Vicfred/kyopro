# unihernandez22
# https://atcoder.jp/contests/abc163/tasks/abc163_b
# implementation

from strutils import split, parseInt
from sequtils import map
from math import sum

let n = stdin.readLine.split[0].parseInt
let a = stdin.readLine.split.map parseInt

if sum(a) <= n:
  echo n-sum(a)
else:
  echo -1

