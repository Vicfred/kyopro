# vicfred
# https://adventofcode.com/2021/day/9
# implementation
let f = open("input")
var line : string

var mat : seq[seq[int]]

while f.read_line(line):
  var nums : seq[int]
  for ch in line:
    nums.add(int(ch) - int('0'))
  mat.add(nums)

var n, m : int
n = mat.len
m = mat[0].len

var lowpoints : seq[int]

for i in 0..<n:
  for j in 0..<m:
    var minima = true
    if i - 1 >= 0 and mat[i - 1][j] <= mat[i][j]:
      minima = false
    if i + 1 < n and mat[i + 1][j] <= mat[i][j]:
      minima = false
    if j - 1 >= 0 and mat[i][j - 1] <= mat[i][j]:
      minima = false
    if j + 1 < m and mat[i][j + 1] <= mat[i][j]:
      minima = false
    if minima:
      lowpoints.add(mat[i][j])

var ans : int
for point in lowpoints:
  ans += point + 1
echo ans

