# vicfred
# https://atcoder.jp/contests/abc182/tasks/abc182_c
# bitmask, math
import strutils

let N = stdin.readLine

let n = N.len

var ans = 1 shl 30

for i in 1..<1 shl n:
  var sum = 0
  var erased = 0

  for j in 0..<n:
    if((i and (1 shl j)) != 0):
      sum += parseInt($N[j])
    else:
      erased += 1

  if sum mod 3 == 0:
      ans = min(ans, erased)

if ans == 1 shl 30:
  echo -1
else:
  echo ans

