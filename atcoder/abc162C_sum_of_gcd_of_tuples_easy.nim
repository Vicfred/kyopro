# Vicfred & uninhm
# https://atcoder.jp/contests/abc162/tasks/abc162_c
# math

import strutils

func gcd(a, b: int): int =
  if b == 0:
    return a;
  return gcd(b, a mod b);

func gcd(a, b, c: int): int =
  return gcd(a,gcd(b,c));

let K = stdin.readLine.parseInt;

var sum = 0;

for i in 1 .. K:
  for j in 1 .. K:
    for k in 1 .. K:
      sum += gcd(i,j,k);

sum.echo;
