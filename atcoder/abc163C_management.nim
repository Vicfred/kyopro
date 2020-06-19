# unihernandez22
# https://atcoder.jp/contests/abc163/tasks/abc163_c
# implementation

import sequtils, strutils


let n = stdin.readLine.parseInt

var management = newSeq[int](n)

let a = stdin.readLine.split.map parseInt

for i in a:
  inc management[i-1]

for i in management:
  echo i
