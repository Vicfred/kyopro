# Vicfred
# https://atcoder.jp/contests/abc066/tasks/arc077_a
# data structures
import strutils, sequtils, algorithm

let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map parseInt

var b = newSeqWith(2*n, -1);

# should be using deque
for i in 0..<n:
  if i mod 2 == 0:
    b[n+i div 2] = a[i]
  else:
    b[n-i div 2 - 1] = a[i]

b.keepItIf(it >= 0)

if n mod 2 == 1:
  b.reverse

echo b.mapIt($it).join(" ")

