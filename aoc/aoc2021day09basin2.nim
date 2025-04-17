# vicfred
# https://adventofcode.com/2021/day/9
# graph traversal, flood fill, bfs, dfs
import algorithm, sequtils

let f = open("input")
var line : string

var dx = @[1, -1, 0, 0]
var dy = @[0, 0, 1, -1]

var visited = newSeqWith(1000, newSeq[int](1000))

proc dfs(mat : seq[seq[int]], r : int, c : int) : int =
  let n = mat.len
  let m = mat[0].len
  if r < 0 or r >= n:
    return 0
  if c < 0 or c >= m:
    return 0
  if mat[r][c] == 9:
    return 0
  if visited[r][c] == 1:
    return 0
  var ans = 1
  visited[r][c] = 1
  for d in 0..<4:
    ans += dfs(mat, r + dx[d], c + dy[d])
  return ans

var mat : seq[seq[int]]

while f.read_line(line):
  var nums : seq[int]
  for ch in line:
    nums.add(int(ch) - int('0'))
  mat.add(nums)

var n, m : int
n = mat.len
m = mat[0].len

var basins : seq[int]
for i in 0..<n:
  for j in 0..<m:
    if visited[i][j] == 0:
      basins.add(dfs(mat, i, j))

basins.sort
echo basins[^1] * basins[^2] * basins[^3]
