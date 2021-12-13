# Vicfred
# https://adventofcode.com/2021/day/5
import strscans
import tables

let f = open("input")
var line: string

let maxn = 1005
var mat : Table[int, Table[int, int]]
for i in 0..maxn:
  mat[i] = Table[int, int]()
for i in 0..maxn:
  for j in -maxn..0:
    mat[i][j] = 0

while f.read_line(line):
  var x1, x2, y1, y2 : int
  if scanf(line, "$i,$i -> $i,$i", x1, y1, x2, y2):
    y1 = -y1
    y2 = -y2
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
for i in 0..maxn:
  for j in -maxn..0:
    if mat[i][j] > 1:
      ans += 1
echo ans
