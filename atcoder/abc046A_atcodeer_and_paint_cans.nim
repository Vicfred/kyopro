# uninhm
# https://atcoder.jp/contests/abc046/tasks/abc046_a
# implementation

import strutils, sequtils, sets

let S = stdin.readLine.split.map parseInt

echo toSet(S).len
