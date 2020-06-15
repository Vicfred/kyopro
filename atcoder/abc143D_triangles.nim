# Vicfred
# https://atcoder.jp/contests/abc143/tasks/abc143_d
# binary search
import strutils, sequtils, algorithm

let n = stdin.readLine.parseInt
var l = stdin.readLine.split.map parseInt

l.sort system.cmp

var ans = 0
for a in 0..<n:
  for b in a+1..<n:
    let fin = l.lowerBound(l[a]+l[b], system.cmp)
    ans += fin-b-1

echo ans
