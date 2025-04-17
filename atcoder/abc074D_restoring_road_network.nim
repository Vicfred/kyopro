# vicfred
# https://atcoder.jp/contests/abc074/tasks/arc083_b
# graph, floyd warshall
import strutils, sequtils, math

let n = stdin.readLine.parseInt

let A = (1..n).mapIt(stdin.readLine.split.map(parseInt))

var ans = 0

for u in 0..<n:
  for v in u+1..<n:
    var valid = true
    for w in 0..<n:
      if w == u or w == v:
        continue
      if A[u][v] + A[v][w] < A[u][w]:
        echo -1
        quit()
      if A[u][w] + A[w][v] == A[u][v]:
        valid = false
        break
    if valid:
      ans += A[u][v]

echo ans

