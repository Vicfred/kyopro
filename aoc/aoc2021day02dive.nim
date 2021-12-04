# Vicfred
# https://adventofcode.com/2021/day/2
import strutils

let f = open("input")

var horizontal, vertical: int

var line : string
while f.read_line(line):
  var direction = line.split[0]
  var distance = parseInt(line.split[1])
  case direction:
    of "forward":
      horizontal += distance
    of "down":
      vertical += distance
    of "up":
      vertical -= distance
    else:
      echo "Impossibru"

echo horizontal, " ", vertical
echo vertical * horizontal

f.close()
