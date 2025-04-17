# vicfred
# https://atcoder.jp/contests/abc196/tasks/abc196_a
# basic math
import sequtils, strutils

var a, b, c, d: int
(a, b) = stdin.readLine.split.map parseInt
(c, d) = stdin.readLine.split.map parseInt

echo b - c
