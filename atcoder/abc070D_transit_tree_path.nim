# vicfred
# https://atcoder.jp/contests/abc070/tasks/abc070_d
# dijkstra, dfs, graph
import strutils, sequtils, heapqueue

type edge = object
  x, y: int

proc `<`(a, b: edge): bool =
  if a.x == b.x:
    return a.y < b.y
  return a.x > b.x

let n = stdin.readLine.parseInt

var tree = newSeq[seq[edge]](n+1)

for i in 1..<n:
  var a, b, c: int
  (a, b, c) = stdin.readLine.split.map parseInt
  var u = edge(x: b, y: c)
  var v = edge(x: a, y: c)
  tree[a].add(u)
  tree[b].add(v)

var q, k: int
(q, k) = stdin.readLine.split.map parseInt

var dist = newSeqWith(n+1, int.high)
dist[k] = 0

var pq = initHeapQueue[edge]()
pq.push(edge(x: 0, y: k))

# Dijkstra
while pq.len > 0:
  var front = pq.pop()
  var u = front.y
  var d = front.x

  if d > dist[u]:
    continue

  for v in tree[u]:
    if (dist[u] + v.y) < dist[v.x]:
      dist[v.x] = dist[u] + v.y
      pq.push(edge(x: dist[v.x], y: v.x))

for i in 1..q:
  var x, y: int
  (x, y) = stdin.readLine.split.map parseInt
  echo dist[x]+dist[y]

