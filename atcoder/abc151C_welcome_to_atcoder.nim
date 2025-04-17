# vicfred
# https://atcoder.jp/contests/abc151/tasks/abc151_c
# data structures, maps, implementation
import strutils, sequtils, tables

var n, m: int
(n, m) = stdin.readLine.split.map parseInt

var ac = initTable[int, int]()
var wa = initTable[int, int]()

var passed = 0
for i in 1..m:
  var x, s: string
  (x, s) = stdin.readLine.split

  let p = x.parseInt

  if p notin ac:
    if s == "WA":
      wa[p] = wa.getOrDefault(p) + 1
    else:
      passed += 1
      ac[p] = 1

var penalties = 0
for x in ac.keys:
  penalties += wa.getOrDefault(x)

echo passed," ", penalties

