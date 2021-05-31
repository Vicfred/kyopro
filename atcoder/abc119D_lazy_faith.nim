# uninhm
# https://atcoder.jp/contests/abc119/submissions/15734443
# binary search

import strutils, sequtils

proc binary_search(a: seq[int], x: int): int =
  var
    left = 0
    right = a.len-1
    cur: int
  while right-left > 1:
    cur = (right+left) div 2
    if a[cur] <= x: left = cur
    else: right = cur
  return right

var a, b, q: int
(a, b, q) = stdin.readLine.split.map(parseInt)

let s = (1 .. a).mapIt(stdin.readLine.parseInt)
let t = (1 .. b).mapIt(stdin.readLine.parseInt)

var
  x, shrine, temple, ans: int
for _ in 1 .. q:
  x = stdin.readLine.parseInt
  shrine = s.binary_search(x)
  temple = t.binary_search(x)
  ans = int.high
  # --- Vicfred ---------------------------------
  for j in 0 .. 1:
    for k in 0 .. 1:
      var
        idx1 = shrine - j
        idx2 = temple - k
      if idx1 < 0 or idx2 < 0 or idx1 > a or idx2 > b:
        continue
      ans = min(ans, abs(x - s[idx1]) + abs(s[idx1] - t[idx2]))
      ans = min(ans, abs(x - t[idx2]) + abs(s[idx1] - t[idx2]))
  # ---------------------------------------------
  echo ans

