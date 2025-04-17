# vicfred
# https://atcoder.jp/contests/abc075/tasks/abc075_b
# simulation
import strutils, sequtils

var h, w: int
(h, w) = stdin.readLine.split.map parseInt
var A = (1..h).mapIt(stdin.readLine)

var ans = newSeqWith(h, newSeq[int](w))

for i in 0..<h:
  for j in 0..<w:
    if A[i][j] == "#"[0]:
      if i-1 >= 0 and j-1 >= 0:
        ans[i-1][j-1] += 1
      if i-1 >= 0:
        ans[i-1][j] += 1
      if i-1 >= 0 and j+1 < w:
        ans[i-1][j+1] += 1
      if j-1 >= 0:
        ans[i][j-1] += 1
      if j+1 < w:
        ans[i][j+1] += 1
      if i+1 < h and j-1 >= 0:
        ans[i+1][j-1] += 1
      if i+1 < h:
        ans[i+1][j] += 1
      if i+1 < h and j+1 < w:
        ans[i+1][j+1] += 1

for i in 0..<h:
  for j in 0..<w:
    if A[i][j] == "#"[0]:
      stdout.write "#"
    else:
      stdout.write ans[i][j]
  echo ""

