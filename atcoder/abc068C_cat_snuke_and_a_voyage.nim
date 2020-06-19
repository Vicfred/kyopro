# Vicfred
# https://atcoder.jp/contests/abc068/tasks/arc079_a
# graph, dfs
import strutils, sequtils, algorithm, tables, sets

var n, m: int
(n, m) = stdin.readLine.split.map parseInt

var graph = initTable[int, seq[int]]()

for i in 0..<m:
  var a, b: int
  (a, b) = stdin.readLine.split.map parseInt
  if not (a in graph):
    graph[a] = @[b]
  else:
    graph[a].add b
  if not (b in graph):
    graph[b] = @[a]
  else:
    graph[b].add a

var possible = false
for island in graph[1]:
  if n in graph[island]:
    possible = true
    break

if possible:
  echo "POSSIBLE"
else:
  echo "IMPOSSIBLE"

