# Vicfred
# https://atcoder.jp/contests/abc399/tasks/abc399_b
# implementation
import sequtils
import strutils
import algorithm;

let n = stdin.readLine.parseInt
let p = stdin.readLine.split.map parseInt
var ranks = deduplicate(p.sorted(order = Descending))
var ranking = newSeq[int](n)

var r = 1
while ranks.len > 0:
  let x = ranks[0]
  ranks.delete(0)
  var k = 0
  for i in 0..<n:
    if p[i] == x:
      ranking[i] = r
      k += 1
  r += k

for rank in ranking:
  echo rank
