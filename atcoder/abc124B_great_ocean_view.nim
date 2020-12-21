# Vicfred
# https://atcoder.jp/contests/abc124/tasks/abc124_b
# implementation
import strutils, sequtils
let n = stdin.readLine.parseInt
let h = stdin.readLine.split.map parseInt

var ans = 1
for i in 1..<n:
  var view = true
  for j in 0..<i:
    if h[j] > h[i]:
      view = false
  if view:
    ans += 1

echo ans

