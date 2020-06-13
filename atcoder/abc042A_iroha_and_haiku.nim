# Vicfred
# https://atcoder.jp/contests/abc042/tasks/abc042_a
# sorting
import algorithm, strutils, sequtils

var line = stdin.readLine.split.map(parseInt)
line.sort
if line == [5, 5, 7]:
  echo "YES"
else:
  echo "NO"

