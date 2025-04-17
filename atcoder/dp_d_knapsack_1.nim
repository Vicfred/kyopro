# vicfred
# https://atcoder.jp/contests/dp/tasks/dp_d
# dynamic programming
import sequtils, strutils

proc knapsack(i: int, w: int): int

var n, W: int
(n, W) = stdin.readLine.split.map parseInt
var ws = newSeq[int](n + 1)
var vs = newSeq[int](n + 1)

var dp = newSeqWith(n + 1, newSeq[int](W + 1))
for i in 0..n:
  for j in 0..W:
    dp[i][j] = low(int)

for i in 1..n:
  (ws[i], vs[i]) = stdin.readLine.split.map parseInt

echo knapsack(1,W)

proc knapsack(i: int, w: int): int = 
  if i > n:
    return 0
  if w <= 0:
    return 0
  if ws[i] > w:
    return knapsack(i + 1, w)
  if dp[i][w] != low(int):
    return dp[i][w]
  dp[i][w] = max(knapsack(i + 1, w - ws[i]) + vs[i], knapsack(i + 1, w))
  return dp[i][w]
