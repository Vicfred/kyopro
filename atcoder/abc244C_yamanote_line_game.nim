# vicfred
# https://atcoder.jp/contests/abc244/tasks/abc244_c
# implementation
import sequtils, sets, strutils

let n = stdin.readLine.parseInt

var numbers = initHashSet[int]()
for x in 1..2*n+1:
  numbers.incl(x)

while numbers.len > 0:
  echo numbers.pop
  let x = stdin.readLine.parseInt
  numbers.excl(x)
  if x == 0:
    break
