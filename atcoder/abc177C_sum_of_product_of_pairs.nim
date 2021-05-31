# uninhm
# https://atcoder.jp/contests/abc177/tasks/abc177_c
# math

import strutils, sequtils

const
  MOD = 1e9.int + 7

let
  n = stdin.readLine.parseInt
  a = stdin.readLine.split.map(parseInt)

var
  csum = newSeq[int](n)
  summ, ans = 0

for i in 1 .. n:
  csum[n-i] = summ
  summ += a[n-i]
  summ = summ mod MOD

for i, elem in a:
  ans += (csum[i] * elem) mod MOD
  ans = ans mod MOD

ans.echo
