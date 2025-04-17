# vicfred
# https://atcoder.jp/contests/abc196/tasks/abc196_a
# brute force
import sequtils, strutils

var a, b, c, d: int
(a, b) = stdin.readLine.split.map parseInt
(c, d) = stdin.readLine.split.map parseInt

var maxima: int
maxima = -99999
for i in a..b:
  for j in c..d:
    if i - j > maxima:
      maxima = i - j

echo maxima
