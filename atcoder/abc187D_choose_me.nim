# Vicfred
# https://atcoder.jp/contests/abc187/tasks/abc187_d
# sorting, greedy
import algorithm, sequtils, strutils

let n = stdin.readLine.parseInt

var A = newSeq[int](n)
var B = newSeq[int](n)
var C = newSeq[int](n)

for i in 0..<n:
  var a, b: int
  (a, b) = stdin.readLine.split.map parseInt
  A[i] = a
  B[i] = b
  C[i] = a + a + b

C.sort
C.reverse

var X: int
X = 0

for i in 0..<n:
  X -= A[i]

var ans = 0
for i in 0..<n:
  if X > 0:
    break
  X += C[i]
  ans += 1

echo ans


