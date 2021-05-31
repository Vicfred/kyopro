# uninhm & Vicfred
# https://atcoder.jp/contests/abc046/tasks/arc062_a
# math

import strutils, sequtils;

let n = stdin.readLine.parseInt;

var t, a = 1;
for _ in 1 .. n:
  var T, A: int;
  (T, A) = stdin.readLine.split.map(parseInt)
  let x = max((t + T - 1) div T, (a + A - 1) div A);
  t = x*T;
  a = x*A;

echo t + a