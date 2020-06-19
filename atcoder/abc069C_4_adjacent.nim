# Vicfred
# https://atcoder.jp/contests/abc069/tasks/arc080_a
# implementation
import strutils, sequtils

let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map(parseInt).mapIt(it mod 4)

var two, four, non: int
two = a.count(2)
four = a.count(0)
non = a.count(1) + a.count(3)

var failure = false
if non > 0:
  four -= non-1
  if four < 0:
    failure = true
  if two mod 2 != 0 and four == 0:
    failure = true
else:
  four -= two mod 2
  if four < 0:
    failure = true

echo(if failure: "No" else: "Yes")

