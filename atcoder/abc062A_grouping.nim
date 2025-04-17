# vicfred
# https://atcoder.jp/contests/abc062/tasks/abc062_a
# implementation, map
import strutils, sequtils, tables

var group = initCountTable[int]()

group[1] = 1
group[3] = 1
group[5] = 1
group[7] = 1
group[8] = 1
group[10] = 1
group[12] = 1

group[4] = 2
group[6] = 2
group[9] = 2
group[11] = 2

group[2] = 3

var x, y: int
(x, y) = stdin.readLine.split.map parseInt

echo (if group[x] == group[y]: "Yes" else: "No")

