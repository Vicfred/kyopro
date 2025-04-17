# vicfred & unaihernandez22
# https://atcoder.jp/contests/abc182/tasks/abc182_b
# math, data structures
import strutils, sequtils, math, tables

let
  n = stdin.readLine.parseInt
  a = stdin.readLine.split.map parseInt

var divisors = initCountTable[int]()

for x in a:
  for d in 2..x:
    if x mod d == 0:
      divisors.inc(d)

var maxima = -1

for item in divisors.values:
  maxima = max(maxima, item)

var ans = 1

for item in divisors.keys:
  if divisors[item] == maxima:
    ans = item

echo ans

