# Vicfred
# https://atcoder.jp/contests/abc166/tasks/abc166_b
# implementation
import strutils, sequtils

let
  line = stdin.readLine.split.map(parseInt)
  n = line[0]
  k = line[1]

var snukes = newSeq[int](n);

for i in 0..<k:
  let d = stdin.readLine.parseInt
  let a = stdin.readLine.split.map(parseInt)
  for j in a:
    snukes[j-1] += 1
snukes.count(0).echo

