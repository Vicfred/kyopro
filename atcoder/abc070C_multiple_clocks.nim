# vicfred
# https://atcoder.jp/contests/abc070/tasks/abc070_c
# math
import strutils, sequtils, math

let n = stdin.readLine.parseInt

var ans = 1
for i in 1..n:
  let t = stdin.readLine.parseInt
  ans = lcm(ans, t)
echo ans

