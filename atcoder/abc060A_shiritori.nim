# vicfred
# https://atcoder.jp/contests/abc060/tasks/abc060_a
# implementation
import strutils

var a, b, c: string
(a, b, c) = stdin.readLine.split

if a[^1] == b[0] and b[^1] == c[0]:
  echo "YES"
else:
  echo "NO"

