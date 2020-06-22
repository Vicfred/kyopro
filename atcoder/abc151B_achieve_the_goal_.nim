# Vicfred
# https://atcoder.jp/contests/abc151/tasks/abc151_b
# binary search
import strutils, sequtils, math

var n, k, m: int
(n, k, m) = stdin.readLine.split.map parseInt

let a = stdin.readLine.split.map parseInt

let score = sum(a)

var ini = 0
var fin = k
var mid = (ini+fin) div 2

while ini < fin:
  mid = (ini+fin) div 2
  if (score+mid) >= n*m:
    fin = mid
  else:
    ini = mid+1

if (score+ini) >= m*n:
  echo ini
else:
  echo -1

