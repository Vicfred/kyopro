# unihernandez22
# https://atcoder.jp/contests/abc169/tasks/abc169_b
# implementation

import strutils, sequtils

var limit = 1e18.int
discard stdin.readLine

let a = stdin.readLine.split.map(parseInt)

if 0 in a:
  echo 0
  quit()

var ans = 1
for i in a:
  if i > limit div ans:
    echo -1
    quit()
  ans *= i
  if ans > limit:
    echo -1
    quit()

echo ans
