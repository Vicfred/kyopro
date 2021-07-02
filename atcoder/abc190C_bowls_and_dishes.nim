# uninhm
# https://atcoder.jp/contests/abc190/tasks/abc190_c
# bitmask, brute force

import strutils, sequtils

var n, m: int
(n, m) = stdin.readLine.split.map(parseInt)

var
  a, b = newSeq[int](m+1)

for i in 1 .. m:
  (a[i], b[i]) = stdin.readLine.split.map(parseInt)

var
  k = stdin.readLine.parseInt
  c, d = newSeq[int](k)

for i in 0 ..< k:
  (c[i], d[i]) = stdin.readLine.split.map(parseInt)

var ans = 0
for mask in 0 ..< (1 shl k):
  var
    dishes = newSeq[bool](n+1)
    count = 0
  for i in 0 ..< k:
    if (mask and (1 shl i)) != 0:
      dishes[d[i]] = true
    else:
      dishes[c[i]] = true
  for i in 1 .. m:
    if dishes[a[i]] and dishes[b[i]]:
      inc count
  if count > ans:
    ans = count

echo ans


