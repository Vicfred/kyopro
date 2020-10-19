# unihernandez22
# https://atcoder.jp/contests/abc180/tasks/abc180_b
# implementation

import strutils, sequtils, math

discard stdin.readLine
let x = stdin.readLine.split.map parseInt

echo x.map(proc (i: int): int = i.abs).sum
echo x.map(proc (i: int): int = i.abs ^ 2).sum.float.sqrt
echo x.map(proc (i: int): int = i.abs).max
