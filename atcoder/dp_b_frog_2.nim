# uninhm
# https://atcoder.jp/contests/dp/tasks/dp_b
# dynamic programming

import strutils, sequtils

var n, k: int;
(n, k) = stdin.readLine.split.map parseInt;
let h = stdin.readLine.split.map parseInt;

var dp = newSeq[int](n);

dp[1] = abs(h[1]-h[0])
for i in 2 ..< n:
  var dpi = int.high;
  for j in max(0, i-k) ..< i:
    dpi = min(dpi, dp[j] + abs(h[i] - h[j]))
  dp[i] = dpi

echo dp[n-1]
