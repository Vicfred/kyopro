# Vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_b
# sorting, greedy
import strutils, sequtils, algorithm

var n, k: int
(n, k) = stdin.readLine.split.map parseInt
var p = stdin.readLine.split.map parseInt

p.sort

var ans = 0
for i in 0..<k:
  ans += p[i]

echo ans

