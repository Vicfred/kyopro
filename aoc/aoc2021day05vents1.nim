# Vicfred
# https://adventofcode.com/2021/day/5
#
# comment: intersection points are preserved under
# reflection by Y. (y => -y)
import strscans
import sequtils

let f = open("input")
var line: string

let maxn = 1005
var mat = newSeqWith(maxn, newSeq[int](maxn))

while f.read_line(line):
  var x1, x2, y1, y2 : int
  if scanf(line, "$i,$i -> $i,$i", x1, y1, x2, y2):
    if x1 == x2:
      var start, fin : int
      start = min(y1, y2)
      fin = max(y1, y2)
      for i in start..fin:
        mat[x1][i] = mat[x1][i] + 1
    if y1 == y2:
      var start, fin: int
      start = min(x1, x2)
      fin = max(x1, x2)
      for i in start..fin:
        mat[i][y1] = mat[i][y1] + 1

var ans : int
for i in 0..<maxn:
  for j in 0..<maxn:
    if mat[i][j] > 1:
      ans += 1
echo ans
