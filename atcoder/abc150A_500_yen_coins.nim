# Vicfred
# https://atcoder.jp/contests/abc150/tasks/abc150_a
# implementation
import strutils, sequtils

var k, x: int
(k, x) = stdin.readLine.split.map parseInt
if k*500 >= x:
  echo "Yes"
else:
  echo "No"

