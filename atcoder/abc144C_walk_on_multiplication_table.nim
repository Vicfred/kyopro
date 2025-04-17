# vicfred
# https://atcoder.jp/contests/abc144/tasks/abc144_c
# math
import strutils, math

let n = stdin.readLine.parseInt

var d = 1
for i in 1..int(sqrt(float(n))):
  if n mod i == 0:
    d = i
echo d - 1 + n div d - 1

