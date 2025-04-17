# vicfred
# https://www.spoj.com/problems/ETF/
# math
import strutils, sequtils, math

proc phi(N: int64): int64 =
  var n = N
  var euler = n
  for i in 2..n:
    if i*i > n:
      break
    if n mod i == 0:
      while n mod i == 0:
        n = n div i
      euler -= euler div i
  if n > 1:
    euler -= euler div n
  return euler

var T = stdin.readLine.parseInt

while T > 0:
  let n = stdin.readLine.parseInt
  echo phi(n)
  T -= 1

