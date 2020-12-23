# uninhm
# https://atcoder.jp/contests/abc123/tasks/abc123_a
# implementation

import strutils, sequtils

let
  fst = stdin.readLine.parseInt

discard (1 .. 3).mapIt(stdin.readLine)

let
  lst = stdin.readLine.parseInt
  k = stdin.readLine.parseInt

echo if lst - fst > k: ":(" else: "Yay!"
