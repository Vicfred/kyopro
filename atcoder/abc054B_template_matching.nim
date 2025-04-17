# vicfred
# https://atcoder.jp/contests/abc054/tasks/abc054_b
# implementation
import strutils, sequtils

var n, m: int; (n, m) = stdin.readLine.split.map parseInt
let A = (1..n).mapIt(stdin.readLine)
let B = (1..m).mapIt(stdin.readLine)

for i in 0..n-m:
  for j in 0..n-m:
    var valid = true
    for y in 0..<m:
      if A[i+y][j..j+m-1] != B[y]:
        valid = false
    if valid:
      echo "Yes"
      quit()
echo "No"

