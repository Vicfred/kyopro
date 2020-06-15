# Vicfred
# https://atcoder.jp/contests/abc065/tasks/abc065_a
# implementation
import strutils, sequtils

var x, a, b: int
(x, a, b) = stdin.readLine.split.map parseInt

if b <= a:
  echo "delicious"
elif b-a <= x:
  echo "safe"
else:
  echo "dangerous"

