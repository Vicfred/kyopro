# vicfred
# https://adventofcode.com/2021/day/4
import strutils, sequtils, sets
# type CheckBoard = array[5, array[5, int]]
type CheckBoard = seq[seq[int]]

proc win(board: CheckBoard, numbers: seq[int]): int =
  var options : seq[HashSet[int]]
  for item in board:
    options.add(toHashSet(item))
  for j in 0..<5:
    var col : HashSet[int]
    for i in 0..<5:
      col.incl(board[i][j])
    options.add(col)
  for number in numbers:
    for option in options.mitems:
      option.excl(number)
  for option in options:
    if option.card == 0:
      for item in options:
        for n in item:
          result += n
      return (result * numbers[^1]) div 2
  result = -1

let f = open("input")

let randos = f.readLine.split(',').map(parseInt)

var boards : seq[CheckBoard]
var blank : string
while f.read_line(blank):
  if f.endOfFile:
    break
  var mat : CheckBoard
  for i in 0..<5:
    var line = f.readLine
    mat.add(line.splitWhitespace.map(parseInt))
  boards.add(mat)

for i in 0..<len(randos):
  for board in boards:
    let score = win(board, randos[0..i])
    if(score != -1):
      echo score
      quit 0

f.close
