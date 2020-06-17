# Vicfred
# https://atcoder.jp/contests/abc066/tasks/abc066_a
# sorting
import strutils, sequtils, algorithm

var line = stdin.readLine.split.map parseInt
line.sort system.cmp

let ans = line[0] + line[1]

echo ans

