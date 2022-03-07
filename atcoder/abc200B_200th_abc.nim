# Vicfred
# https://atcoder.jp/contests/abc200/tasks/abc200_b
# implementation
import strutils, sequtils
var N, K : int
(N, K) = stdin.readLine.split.map parseInt

for _ in 1..K:
  if N mod 200 == 0:
    N = N div 200
  else:
    var s : string
    s = $N
    s = s & "200"
    N = s.parseInt
echo N
