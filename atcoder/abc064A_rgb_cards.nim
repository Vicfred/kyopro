# Vicfred
# https://atcoder.jp/contests/abc064/tasks/abc064_a
# implementation
import strutils, sequtils

var r, g, b: int
(r, g, b) = stdin.readLine.split.map parseInt

let number = b+10*g+100*r

if number mod 4 == 0:
  echo "YES"
else:
  echo "NO"

