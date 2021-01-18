# uninhm
# https://atcoder.jp/contests/abc042/tasks/abc042_b
# sorting

import algorithm, strutils, sequtils

let n = stdin.readLine.split[0].parseInt

var s = (1..n).mapIt(stdin.readLine)
s.sort system.cmp

for i in s:
  stdout.write i
echo ""
