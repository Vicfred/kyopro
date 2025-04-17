# vicfred
# https://atcoder.jp/contests/abc151/tasks/abc151_b
# brute force, simulation
import strutils, sequtils, math

var n, k, m: int
(n, k, m) = stdin.readLine.split.map parseInt

let a = stdin.readLine.split.map parseInt

let score = sum(a)

for i in 0..k:
  let average = (score+i)/n
  if average >= float(m):
    echo i
    quit()
echo -1

