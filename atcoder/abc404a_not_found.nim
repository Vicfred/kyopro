# uninhm
# https://atcoder.jp/contests/abc404/tasks/abc404_a
# implementation

import sequtils, strutils, sets

let s = stdin.readLine.strip

var letters = "abcdefghijklmnopqrstuvwxyz".toHashSet

for l in s:
  letters.excl l

echo letters.toSeq()[0]
