# uninhm
# https://atcoder.jp/contests/abc047/tasks/abc047_a
# implementation

import strutils, sequtils, math

let abc = stdin.readLine.split.map parseInt

if sum(abc) mod 2 == 0 and sum(abc) div 2 in abc:
  echo "Yes"
else:
  echo "No"
