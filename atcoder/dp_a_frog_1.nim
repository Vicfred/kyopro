# unihernandez22
# https://atcoder.jp/contests/dp/tasks/dp_a
# dynamic programming

import strutils, sequtils

let n = stdin.readLine.parseInt;
let h = stdin.readLine.split.map parseInt;

var dp = newSeq[int](n);

dp[1] = abs(h[1]-h[0])
for i in 2 ..< n:
  dp[i] = min(dp[i-1] + abs(h[i] - h[i-1]), dp[i-2] + abs(h[i] - h[i-2]))

echo dp[n-1]
