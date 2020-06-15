# Vicfred
# https://atcoder.jp/contests/abc063/tasks/abc063_a
# implementation
import strutils, sequtils

var a, b: int
(a, b) = stdin.readLine.split.map parseInt

if a+b >= 10:
  echo "error"
else:
  echo a+b

