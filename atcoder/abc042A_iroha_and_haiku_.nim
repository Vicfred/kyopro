# vicfred
# https://atcoder.jp/contests/abc042/tasks/abc042_a
# sorting
import algorithm, strutils, sequtils

var line = stdin.readLine.split.map(parseInt)
line.sort system.cmp # system.cmp required in 0.13.0
if line == @[5, 5, 7]:
  echo "YES"
else:
  echo "NO"

