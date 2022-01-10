# Vicfred
# https://adventofcode.com/2021/day/10
# stack, implementation
import algorithm
import tables
let f = open("input")
var line : string

let opening = @['(', '[', '{', '<']
let matching = {')': '(',
                ']': '[',
                '}': '{',
                '>': '<'}.toTable
let points = {'(':1,
              '[': 2,
              '{': 3,
              '<': 4}.toTable

var scores : seq[int]
while f.read_line(line):
  var score : int
  var state : seq[char]
  var valid = true
  for ch in line:
    if ch in opening:
      state.add(ch)
    else:
      let initial = state.pop
      if matching[ch] != initial:
        valid = false
  if not valid:
    continue
  while state.len > 0:
    let ch = state.pop
    score *= 5
    score += points[ch]
  scores.add(score)
scores.sort
echo scores[scores.len div 2]
