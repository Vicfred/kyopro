# unihernandez22
# https://atcoder.jp/contests/abc050/tasks/abc050_b
# simulation

from math import sum
import strutils, sequtils

let n = stdin.readLine.parseInt
let t = stdin.readLine.split.map parseInt

let m = stdin.readLine.parseInt

let sum_t = sum(t)

var p, x: int
for _ in 1..m:
  (p, x) = stdin.readLine.split.map parseInt
  echo sum_t - t[p-1] + x
