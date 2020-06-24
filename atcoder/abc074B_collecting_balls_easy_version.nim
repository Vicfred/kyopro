# Vicfred
# https://atcoder.jp/contests/abc074/tasks/abc074_b
# implementation
import strutils, sequtils

let n = stdin.readLine.parseInt
let k = stdin.readLine.parseInt
let x = stdin.readLine.split.map parseInt

var ans = 0

for j in 0..<n:
  let xi = x[j]
  let i = j+1
  ans += 2*min(xi, abs(k-xi))

echo ans

