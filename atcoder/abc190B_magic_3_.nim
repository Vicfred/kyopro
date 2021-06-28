# uninhm
# https://atcoder.jp/contests/abc190/tasks/abc190_b
# implementation

import strutils, sequtils

template for_else(a, b: string, code: untyped) =
  var flag {.inject.} = false
  code
  if flag:
    echo a
  else:
    echo b

var n, s, d: int64
(n, s, d) = stdin.readLine.split.map(parseInt)

for_else("Yes", "No"):
  var x, y: int64
  for i in 1 .. n:
    (x, y) = stdin.readLine.split.map(parseInt)
    if x < s and y > d:
      flag = true
      break
