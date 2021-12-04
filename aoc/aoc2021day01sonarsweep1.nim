# Vicfred
# https://adventofcode.com/2021/day/1
import strutils

let f = open("input")
var line : string

var prev, cur, total: int
prev = 0
total = 0
while f.read_line(line):
  cur = parseInt(line)
  if cur - prev > 0:
    total += 1
  prev = cur
total -= 1

echo total

f.close()
