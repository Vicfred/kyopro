# vicfred
# https://atcoder.jp/contests/abc056/tasks/abc056_b
# implementation
import strutils, sequtils

var w, a, b: int
(w, a, b) = stdin.readLine.split.map(parseInt)

if abs(a-b) <= w:
  echo 0
else:
  echo abs(a-b)-w

