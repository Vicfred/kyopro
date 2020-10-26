# unihernandez22
# https://atcoder.jp/contests/arc106/tasks/arc106_b
# dfs

import strutils, sequtils

var n, m: int64
(n, m) = stdin.readLine.split.map parseInt

var
  graph = newSeq[seq[int64]](n + 1)
  visited = newSeq[bool](n + 1)
  diff = 0'i64
  a, b: seq[int]

proc dfs(u: int64) =
  visited[u] = true

  diff += a[u-1] - b[u-1]

  for v in graph[u]:
    if not visited[v]:
      dfs(v)

a = stdin.readLine.split.map parseInt
b = stdin.readLine.split.map parseInt

var c, d: int64
for i in 0 ..< m:
  (c, d) = stdin.readLine.split.map parseInt
  graph[c].add d
  graph[d].add c

for u in 1 .. n:
  if not visited[u]:
    diff = 0
    dfs(u)
    if diff != 0:
      echo "No"
      quit()
echo "Yes"
