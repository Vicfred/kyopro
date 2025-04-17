# vicfred
# https://atcoder.jp/contests/abc195/tasks/abc195_b
# math, implementation, brute force
import sequtils, strutils, math

var a, b, w : int
(a, b, w) = stdin.readLine.split.map parseInt


var minima, maxima : int
minima = 10 ^ 9
maxima = -1

for n in 1..1000000:
  if a*n <= 1000*w and 1000*w <= b*n:
    minima = min(minima, n)
    maxima = max(maxima, n)

if maxima == -1:
  echo "UNSATISFIABLE"
else:
  echo minima, " ", maxima
