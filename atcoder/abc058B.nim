# uninhm
# https://atcoder.jp/contests/abc058/tasks/abc058_b
# implementation

import strutils, sequtils

let O = stdin.readLine
let E = stdin.readLine

var ans = ""

for i in 0 ..< min(O.len, E.len):
  ans &= O[i] & E[i]

if O.len > E.len:
  ans &= $O[O.len-1]
elif E.len > O.len:
  ans &= $E[E.len-1]

ans.echo
