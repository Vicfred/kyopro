# Vicfred
# https://atcoder.jp/contests/abc061/tasks/abc061_a
# implementation
import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map parseInt

if c >= a and c <= b:
  echo "Yes"
else:
  echo "No"

