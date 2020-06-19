# Vicfred
# https://atcoder.jp/contests/abc070/tasks/abc070_b
# simulation
import strutils, sequtils

var a, b, c, d: int
(a, b, c, d) = stdin.readLine.split.map parseInt

var alice = newSeq[int](101)
var bob = newSeq[int](101)

for i in a..<b:
  alice[i] = 1

for i in c..<d:
  bob[i] = 1

var answer = 0
for i in 0..100:
  if alice[i] == 1 and bob[i] == 1:
    answer += 1

echo answer

