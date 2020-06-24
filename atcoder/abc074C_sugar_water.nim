# Vicfred
# https://atcoder.jp/contests/abc074/tasks/arc083_a
# brute force
import strutils, sequtils

var A, B, C, D, E, F: int
(A, B, C, D, E, F) = stdin.readLine.split.map parseInt

var maxima_w = 100*A
var maxima_s = 0

for a in 0..30:
  for b in 0..30:
    let water = a*A*100 + b*B*100
    if water > F:
      break
    let limit = E*(water div 100)
    for c in 0..3000:
      for d in 0..3000:
        let sugar = c*C+d*D
        if water+sugar > F:
          break
        if sugar > limit:
          break
        if (maxima_w+maxima_s)*100*sugar > 100*maxima_s*(water+sugar):
          maxima_w = water
          maxima_s = sugar

echo maxima_w + maxima_s, " ", maxima_s

