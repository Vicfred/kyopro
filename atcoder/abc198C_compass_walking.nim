# vicfred
# https://atcoder.jp/contests/abc198/tasks/abc198_c
# math, geometry
import sequtils, strutils
import math

proc euclidean(x : float64, y : float64): float64 =
  sqrt(x * x + y * y)

var r, x, y : int
(r, x, y) = stdin.readLine.split.map parseInt
if euclidean((float64)x, (float64)y) == (float)r:
  echo 1
elif euclidean((float64)x, (float64)y) < 2 * (float)r:
  echo 2
else:
  echo (int)ceil(euclidean((float64)x, (float64)y) / (float64)r)
# https://atcoder.jp/contests/abc198/submissions/29240958
