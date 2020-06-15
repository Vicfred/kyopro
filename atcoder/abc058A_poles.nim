# Vicfred
# https://atcoder.jp/contests/abc058/tasks/abc058_a
# implementation
import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map parseInt

if b-a == c-b:
  echo "YES"
else:
  echo "NO"

