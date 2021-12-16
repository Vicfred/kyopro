import sequtils, strutils

var lanternfish = stdin.readLine.split(",").map parseInt

let days = 256

var dp = newSeq[int](days + 1)
dp[0] = 1
dp[6 + 1] = 1
dp[8 + 1] = 1
for i in 9..days:
  dp[i] = dp[i - 7]  + dp[i - 9]

var ans : int
for fish in lanternfish:
  ans += dp[days - fish]
echo ans

