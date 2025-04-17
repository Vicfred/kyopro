# vicfred
# https://codeforces.com/contest/1555/problem/A
# basic math
import sequtils, strutils
let t = stdin.readLine.parseInt

for _ in 0..<t:
  let n = stdin.readLine.parseInt
  echo max(6, n + 1) div 2 * 5
