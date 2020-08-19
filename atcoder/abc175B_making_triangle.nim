# unihernandez22
# https://atcoder.jp/contests/abc175/tasks/abc175_b
# brute force

import strutils, sequtils, algorithm, sets

discard stdin.readLine
var l = stdin.readLine.split.map(parseInt).toSet.toSeq

proc cmp2(x, y: int): int = -cmp(x, y)


l.sort cmp2

var ans = 0
for x in 0 ..< l.len:
  for y in x+1 ..< l.len:
    for z in x+1 ..< l.len:
      if y == z: continue
      if l[y] + l[z] > l[x]: inc ans

ans.echo
