# Vicfred
# https://atcoder.jp/contests/dp/tasks/dp_c
# dynamic programming
import sequtils, strutils
import sugar

let n = stdin.readLine.parseInt

var a = newSeq[int](n)
var b = newSeq[int](n)
var c = newSeq[int](n)

for idx in 0..n-1:
  (a[idx], b[idx], c[idx]) = stdin.readLine.split.map parseInt

var dp = newSeq[seq[int]](n).map(x => newSeq[int](3))
dp[0][0] = max(a[0], max(b[0], c[0]))
dp[0][1] = dp[0][0]
dp[0][2] = dp[0][1]

for i in 1..n - 1:
  dp[i][0] = max(dp[i - 1][1] + a[i], dp[i - 1][2] + a[i])
  dp[i][1] = max(dp[i - 1][0] + b[i], dp[i - 1][2] + b[i])
  dp[i][2] = max(dp[i - 1][0] + c[i], dp[i - 1][1] + c[i])

let ans = max(dp[n - 1][0], max(dp[n - 1][1], dp[n - 1][2]))
echo ans
