# Vicfred
# https://atcoder.jp/contests/abc182/tasks/abc182_d
# math

import strutils, sequtils

let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map parseInt

a.insert(0)

var extra = 0
var maxima = 0
var ans = 0

for i in 1..n:
  a[i] += a[i - 1]
  maxima = max(maxima, a[i])
  ans = max(ans, maxima + extra)
  extra += a[i]

echo ans

