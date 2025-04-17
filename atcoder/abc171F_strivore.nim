# vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_f
# math, binomial coefficients
import strutils, math

let MOD = 10^9+7
let MAXN = 2*10^6

var fac = newSeq[int](MAXN+5)
var inv = newSeq[int](MAXN+5)
var finv = newSeq[int](MAXN+5)

proc binpow(A, B, m: int): int =
  var a = A
  var b = B
  result = 1
  a = a mod m
  while b > 0:
    if b mod 2 == 1:
      result = (result * a) mod m
    a = (a * a) mod m
    b = b div 2

proc binomial(n, k, m: int): int =
  if n < 0 or n < k:
    return 0
  var ans = fac[n] mod m
  ans *= finv[k] mod m
  ans = ans mod m
  ans *= finv[n-k] mod m
  ans = ans mod m
  return ans

fac[0] = 1
fac[1] = 1
finv[0] = 1
finv[1] = 1
inv[1] = 1

for i in 2..<MAXN:
  fac[i] = (fac[i-1]*i) mod MOD
  inv[i] = (MOD - (MOD div i) * (inv[MOD mod i] mod MOD)) mod MOD
  finv[i] = finv[i-1]*inv[i] mod MOD

let k = stdin.readLine.parseInt
let s = stdin.readLine.strip
let n = s.len

var ans = 0
for x in 0..k:
  let bin = binomial(n + k - x - 1, n - 1, MOD)
  var now = binpow(26, x, MOD)
  now *= bin
  now = now mod MOD
  now *= binpow(25, k-x, MOD)
  now = now mod MOD
  ans += now
  ans = ans mod MOD

ans = (ans+MOD) mod MOD
echo ans

