# vicfred
# https://atcoder.jp/contests/abc067/tasks/abc067_b
# sorting, greedy
import strutils, sequtils, algorithm

var n, k: int
(n, k) = stdin.readLine.split.map parseInt
var l = stdin.readLine.split.map parseInt

l.sort system.cmp
l.reverse

var ans = 0
for i in 0..<k:
  ans += l[i]

echo ans

