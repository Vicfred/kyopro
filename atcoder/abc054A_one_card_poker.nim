# vicfred
# https://atcoder.jp/contests/abc054/tasks/abc054_a
# implementation
import strutils, sequtils

let line = stdin.readLine.split.map(parseInt)
let (a, b) = (line[0], line[1])

if a == 1 or b == 1:
  if a == b:
    echo "Draw"
  elif a == 1:
    echo "Alice"
  else:
    echo "Bob"
elif a > b:
  echo "Alice"
elif a < b:
  echo "Bob"
else:
  echo "Draw"

