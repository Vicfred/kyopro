# Vicfred
# https://adventofcode.com/2021/day/2#part2
import strutils

let f = open("input")

var horizontal, vertical, aim: int

var line : string
while f.read_line(line):
  var direction = line.split[0]
  var distance = parseInt(line.split[1])
  case direction:
    of "forward":
      horizontal += distance
      vertical += aim * distance
    of "down":
      aim += distance
    of "up":
      aim -= distance
    else:
      echo "Impossibru"

echo horizontal, " ", vertical
echo vertical * horizontal

f.close()
