# uninhm
# https://atcoder.jp/contests/abc112/tasks/abc112_b
# implementation

import strutils, sequtils

proc readintseq: seq[int] = stdin.readLine.split.map parseInt

var N, T, c, t: int
(N, T) = readintseq()

var ans = -1
for i in 0 ..< N:
  (c, t) = readintseq()
  if t <= T and (ans == -1 or c < ans):
    ans = c

if ans == -1:
  echo "TLE"
else:
  echo ans
