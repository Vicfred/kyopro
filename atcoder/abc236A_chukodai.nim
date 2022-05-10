# uninhm
# https://atcoder.jp/contests/abc236/tasks/abc236_a
# implementation

import strutils, sequtils

var s = stdin.readLine.strip
var a, b: int
(a, b) = stdin.readLine.split.map parseInt

swap s[a-1], s[b-1]

echo s
