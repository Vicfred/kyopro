# vicfred
# https://atcoder.jp/contests/abc061/tasks/abc061_b
# bucket sort 
import strutils, sequtils, tables

var n, m: int
(n, m) = stdin.readLine.split.map parseInt

var cities = initCountTable[int]()

for _ in 1..m:
  var a, b: int
  (a, b) = stdin.readLine.split.map parseInt
  cities.inc(a)
  cities.inc(b)

for city in 1..n:
  echo cities.getOrDefault(city)
