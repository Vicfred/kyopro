# vicfred
# https://atcoder.jp/contests/abc076/tasks/abc076_b
# simulation, dfs
import strutils

let n = stdin.readLine.parseInt
let k = stdin.readLine.parseInt

var queue = newSeq[int]()

queue.add(1)

var steps = 0

var minima = int.high
while steps < n:
  steps += 1
  var items = newSeq[int]()
  while queue.len > 0:
    items.add(queue.pop)
  for item in items:
    queue.add(2*item)
    queue.add(item+k)
minima = min(queue)

echo minima

