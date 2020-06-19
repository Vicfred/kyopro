# Vicfred
# https://atcoder.jp/contests/abc069/tasks/abc069_a
# math
import strutils, sequtils

var n, m: int
(n, m) = stdin.readLine.split.map parseInt

echo (n-1)*(m-1)
