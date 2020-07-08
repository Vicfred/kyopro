# unihernandez22
# https://atcoder.jp/contests/abc131/tasks/abc131_b
# implementation

import strutils, sequtils;

var n, l: int;
(n, l) = stdin.readLine.split.map parseInt;

var eat = int.high;
var cumulative = 0;
var current: int;
for i in 1..n:
  current = l+i-1
  if abs(current) < abs(eat):
    eat = current
  cumulative += current

echo cumulative-eat
