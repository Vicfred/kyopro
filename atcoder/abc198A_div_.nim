# vicfred
# https://atcoder.jp/contests/abc198/tasks/abc198_a
# combinatorics, math, brute force
import strutils
let n = stdin.readLine.parseInt

var ans : int
for x in 1..n:
  for y in 1..n:
    if x + y == n:
      ans += 1
echo ans
