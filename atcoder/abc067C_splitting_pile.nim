# Vicfred
# https://atcoder.jp/contests/abc067/tasks/arc078_a
import strutils, sequtils, math, algorithm

let n = stdin.readLine.parseInt
let a = stdin.readLine.split.map parseInt
let total: int64 = sum(a)

var cur = 0'i64
var minima = 1'i64 shl 60
for i in 0..<n-1:
  cur += a[i]
  minima = min(minima, abs(total-2*cur))

echo minima

