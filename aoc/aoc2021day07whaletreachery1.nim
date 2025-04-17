# vicfred
# https://adventofcode.com/2021/day/7
import sequtils
import strutils

let crabs = stdin.readLine.split(",").map(parseInt)

var minima = high(int)
for submarine in crabs:
  var dist : int
  for crab in crabs:
    dist += abs(submarine - crab)
  minima = min(minima, dist)

echo minima

