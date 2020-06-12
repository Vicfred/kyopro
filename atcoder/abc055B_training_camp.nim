# Vicfred
# https://atcoder.jp/contests/abc055/tasks/abc055_b
# math
import strutils, math

let n = stdin.readLine.parseInt

var ans = 1
for i in 1..n:
  ans *= i
  ans = `mod`(ans, (10^9+7))
echo ans

