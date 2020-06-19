# unihernandez22
# https://atcoder.jp/contests/abc072/tasks/arc082_a
# greedy

import tables, strutils, sequtils

discard stdin.readLine
var a = stdin.readLine.split.map(parseInt)

var possibles_x = initCountTable[int]()

for i in a:
  possibles_x.inc(i)
  possibles_x.inc(i+1)
  possibles_x.inc(i-1)

echo possibles_x.largest[1]
