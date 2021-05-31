# Vicfred
# https://atcoder.jp/contests/arc104/tasks/arc104_a
# math
import strutils, sequtils

var a, b: int
(a, b) = stdin.readLine.split.map parseInt

echo (a + b) div 2, " ", (a - b) div 2

