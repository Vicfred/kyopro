# unihernandez22 and Vicfred
# https://atcoder.jp/contests/abc173/tasks/abc173_c
# implementation, brute force

import strutils, sequtils

func numberOfBlacks(grid: seq[string]): int =
  let
    h = grid.len
    w = grid[0].len

  var blacks: int
  for i in 0 ..< h:
    for j in 0 ..< w:
      if grid[i][j] == '#':
        inc blacks

  return blacks

var h, w, k: int
(h, w, k) = stdin.readLine.split.map(parseInt)

var c = newSeq[string](h)
for i in 0 ..< h:
  c[i] = stdin.readLine.strip

var ans: int
for imask in 0 ..< (1 shl h):
  for jmask in 0 ..< (1 shl w):
    var new_grid = c
    for ibit in 0 ..< h:
      if (imask and (1 shl ibit)) != 0:
        for i in 0 ..< w:
          new_grid[ibit][i] = 'x'
    for jbit in 0 ..< w:
      if (jmask and (1 shl jbit)) != 0:
        for j in 0 ..< h:
          new_grid[j][jbit] = 'x'
    if new_grid.numberOfBlacks == k:
      ans += 1

ans.echo
