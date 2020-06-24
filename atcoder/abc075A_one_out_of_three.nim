# Vicfred
# https://atcoder.jp/contests/abc075/tasks/abc075_a
# implementation, sorting, greedy
import strutils, sequtils, algorithm

var line = stdin.readLine.split.map parseInt
line.sort

if line[0] == line[1]:
  echo line[2]
else:
  echo line[0]

