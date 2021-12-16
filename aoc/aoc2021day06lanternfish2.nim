import sequtils, strutils

var lanternfish = stdin.readLine.split(",").map parseInt

let days = 256

var dp = newSeq[int](days + 1)
dp[0] = 1
dp[1] = 2
dp[2] = 2
dp[3] = 2
dp[4] = 2
dp[5] = 2
dp[6] = 2
dp[7] = 2
dp[8] = 3
for i in 9..days:
  dp[i] = dp[i - 7]  + dp[i - 9]
echo dp

var ans : int
for fish in lanternfish:
  ans += dp[days - fish]
echo ans

