# Vicfred
# https://adventofcode.com/2021/day/1#part2
import strutils

let f = open("input")

var sweeps = newSeq[int]()

var line : string
while f.read_line(line):
  sweeps.add(parseInt(line))

var cum = newSeq[int]()
for idx in 0..len(sweeps) - 3:
  cum.add(sweeps[idx] + sweeps[idx + 1] + sweeps[idx + 2])

var prev, total : int
prev = 0
total = 0
for item in cum:
  if item - prev > 0:
    total += 1
  prev = item
total -= 1

echo total

f.close()
