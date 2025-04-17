# vicfred
# https://adventofcode.com/2021/day/7
import sequtils
import strutils

let crabs = stdin.readLine.split(",").map(parseInt)

var minima = high(int)
for submarine in 0..2048:
  var dist : int
  for crab in crabs:
    let d = abs(submarine - crab)
    dist += d * (d + 1) div 2
  minima = min(minima, dist)

echo minima

