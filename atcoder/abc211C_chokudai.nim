# Vicfred
# https://atcoder.jp/contests/abc211/tasks/abc211_c
# dynamic programming

import sequtils

const modulo = 1000000007

let S = stdin.readLine

let n = S.len

var dp = newSeqWith(n + 1, newSeq[int](8 + 1))

for i in 0..n:
  dp[i][0] = 1

const C = "chokudai"

for i in 1..n:
  for j in 1..8:
    if S[i - 1] != C[j - 1]:
      dp[i][j] = dp[i - 1][j]
    else:
      dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j]
    if dp[i][j] >= modulo:
      dp[i][j] -= modulo

echo dp[n][8]
