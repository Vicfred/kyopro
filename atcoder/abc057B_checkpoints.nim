# Vicfred
# https://atcoder.jp/contests/abc057/tasks/abc057_b
# implementation
import strutils, sequtils

var n, m: int
(n, m) = stdin.readLine.split.map(parseInt)

var students = newSeq[(int, int)](n)
var checkpoints = newSeq[(int, int)](m)

for i in 0..<n:
  var x, y: int
  (x, y) = stdin.readLine.split.map(parseInt)
  students[i] = (x, y)

for i in 0..<m:
  var x, y: int
  (x, y) = stdin.readLine.split.map(parseInt)
  checkpoints[i] = (x, y)

for i, student in students:
  let (sx, sy) = student
  var
    idx = -1
    dist = 1e9.int
  for j, point in checkpoints:
    let
      (cx, cy) = point
      d = abs(sx - cx) + abs(sy - cy)
    if d < dist:
      dist = d
      idx = j+1
  idx.echo


