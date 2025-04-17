# vicfred
# https://atcoder.jp/contests/abc065/tasks/abc065_b
# implementation
import strutils, sequtils

let n = stdin.readLine.parseInt
var a = (1..n).mapIt(stdin.readLine.parseInt-1)

var visited = 0
var steps = 0

while true:
  if visited == 1:
    echo steps
    break
  if steps >= n:
    echo -1
    break
  steps += 1
  visited = a[visited]

