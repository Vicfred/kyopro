# uninhm
# https://atcoder.jp/contests/abc190/tasks/abc190_a
# implementation

import strutils, sequtils

var a, b, c: int
(a, b, c) = stdin.readLine.split.map(parseInt)

if a > b:
  echo "Takahashi"
elif b > a:
  echo "Aoki"
else:
  if c == 0:
    echo "Aoki"
  else:
    echo "Takahashi"
