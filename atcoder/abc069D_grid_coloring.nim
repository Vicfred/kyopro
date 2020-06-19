# Vicfred
# https://atcoder.jp/contests/abc069/tasks/arc080_b
# implementation
import strutils, sequtils, sugar

var h, w: int
(h, w) = stdin.readLine.split.map parseInt
let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map parseInt

#var ans = newSeq[seq[int]](h).map(x => newSeq[int](w))
var ans = newSeqWith(h, newSeq[int](w))

var color = 1

for i in 0..<h:
  if i mod 2 == 0:
    for j in 0..<w:
      ans[i][j] = color
      a[color-1] -= 1
      if a[color-1] == 0:
        color += 1
  else:
    for j in countdown(w-1,0):
      ans[i][j] = color
      a[color-1] -= 1
      if a[color-1] == 0:
        color += 1

for line in ans:
  echo line.mapIt($it).join(" ")

