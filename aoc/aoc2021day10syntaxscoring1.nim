# vicfred
# https://adventofcode.com/2021/day/10
# stack, implementation
import tables
let f = open("input")
var line : string

let opening = @['(', '[', '{', '<']
let matching = {')': '(',
                ']': '[',
                '}': '{',
                '>': '<'}.toTable
let points = {')':3,
              ']': 57,
              '}': 1197,
              '>': 25137}.toTable

var score : int
while f.read_line(line):
  var state : seq[char]
  for ch in line:
    if ch in opening:
      state.add(ch)
    else:
      let initial = state.pop
      if matching[ch] != initial:
        score += points[ch]
echo score
