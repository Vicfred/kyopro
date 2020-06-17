# Vicfred
# https://atcoder.jp/contests/abc067/tasks/abc067_a
# simulation
import strutils, sequtils

var a, b: int
(a, b) = stdin.readLine.split.map parseInt

if a mod 3 == 0 or b mod 3 == 0 or (a+b) mod 3 == 0:
  echo "Possible"
else:
  echo "Impossible"

