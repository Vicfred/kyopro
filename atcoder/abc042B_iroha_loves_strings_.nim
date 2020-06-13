# Vicfred
# https://atcoder.jp/contests/abc042/tasks/abc042_b
# sorting

import algorithm, strutils, sequtils

let n = stdin.readLine.split[0].parseInt

var s = (1..n).mapIt(stdin.readLine)
s.sort

var ans = ""

for str in s:
  ans &= str

echo ans

