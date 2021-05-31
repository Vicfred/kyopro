# Vicfred
# https://atcoder.jp/contests/abc181/tasks/abc181_a
# implementation
import strutils

let n = stdin.readLine.parseInt

if n mod 2 == 0:
  echo "White"
else:
  echo "Black"

