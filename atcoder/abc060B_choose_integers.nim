# vicfred
# https://atcoder.jp/contests/abc060/tasks/abc060_b
# math, implementation
import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map parseInt

var found = false

for i in 1..100:
  if (a*i) mod b == c:
    found = true

if found:
  echo "YES"
else:
  echo "NO"

