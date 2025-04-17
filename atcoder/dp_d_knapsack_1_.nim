# vicfred
# https://atcoder.jp/contests/dp/tasks/dp_d
# dynamic programming
import sequtils, strutils

var n, W: int
(n, W) = stdin.readLine.split.map parseInt
var ws = newSeq[int](n + 1)
var vs = newSeq[int](n + 1)

var dp = newSeqWith(n + 1, newSeq[int](W + 1))

for i in 0..<n:
  (ws[i], vs[i]) = stdin.readLine.split.map parseInt

for i in 1..n:
  for j in 1..W:
    if ws[i - 1] <= j:
      dp[i][j] = max(dp[i - 1][j - ws[i - 1]] + vs[i - 1], dp[i - 1][j])
    else:
      dp[i][j] = dp[i - 1][j]

echo dp[n][W]
