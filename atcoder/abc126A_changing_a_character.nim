# vicfred
# https://atcoder.jp/contests/abc126/tasks/abc126_a
# implementation
import strutils, sequtils

var n, k: int
(n, k) = stdin.readLine.split.map parseInt

var s = stdin.readLine

s[k-1] = s[k-1].toLowerAscii

echo s

