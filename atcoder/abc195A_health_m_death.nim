# vicfred
# https://atcoder.jp/contests/abc195/tasks/abc195_a
# implementation
import sequtils, strutils
var m, h : int
(m, h) = stdin.readLine.split.map parseInt

if h mod m == 0:
  echo "Yes"
else:
  echo "No"
