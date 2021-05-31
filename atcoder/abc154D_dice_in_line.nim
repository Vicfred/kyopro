# uninhm
# https://atcoder.jp/contests/abc154/tasks/abc154_d
# math, probability

import strutils, sequtils
from math import sum

func f(a: string): float =
  let x = a.parseInt
  return x * (x+1) div 2 / x

var n, k: int
(n, k) = stdin.readLine.split.map parseInt

let p = stdin.readLine.split.map f

var
  s = sum(p[0 ..< k])
  a = s

for i in k ..< n:
    s += p[i] - p[i-k]
    a = max(a, s)

echo a

