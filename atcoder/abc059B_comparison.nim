# vicfred
# https://atcoder.jp/contests/abc059/tasks/abc059_b
# implementation
import strutils

let A = stdin.readLine.strip
let B = stdin.readLine.strip

if A.len == B.len:
  if A > B:
    echo "GREATER"
  elif A < B:
    echo "LESS"
  else:
    echo "EQUAL"
elif A.len < B.len:
    echo "LESS"
else:
    echo "GREATER"

