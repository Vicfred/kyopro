# vicfred
# https://adventofcode.com/2021/day/8
# string manipulation, implementation
import strutils

let f = open("input")
var line : string

var ans : int
while f.read_line(line):
  let input = line.split("|")[1].split
  for word in input:
    if word.len == 2 or
       word.len == 3 or
       word.len == 4 or
       word.len == 7:
      ans += 1
echo ans
