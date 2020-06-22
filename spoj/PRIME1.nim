# unihernandez22
# https://www.spoj.com/problems/PRIME1/
# eratosthenes sieve

import strutils
from sequtils import map, toSeq
from math import sqrt
 
iterator primesUpto(begin, limit: int): int =
  let sqrtLimit = int(sqrt(float64(limit)))
  var composites = newSeq[bool](limit + 3)
  for n in 2 .. sqrtLimit: # cull to square root of limit
    if not composites[n]: # if prime -> cull its composites
      for c in countup(n *% n, limit +% 1, n): # start at ``n`` squared
        composites[c] = true
  for n in 2 .. limit: # separate iteration over results
    if not composites[n]:
      yield n

let t = stdin.readLine.parseInt
for kase in 1..t:
  var m, n: int; (m, n) = stdin.readLine.split.map parseInt
  for i in primesUpto(m, n):
      echo i
  if kase < t:
    echo()
