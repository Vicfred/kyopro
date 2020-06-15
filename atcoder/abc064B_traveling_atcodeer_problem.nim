# Vicfred
# https://atcoder.jp/contests/abc064/tasks/abc064_b
# sorting, greedy
import strutils, sequtils, algorithm

let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map parseInt
a.sort system.cmp

var answer = 0
for i in 0..<n-1:
  answer += a[i+1]-a[i]
echo answer

