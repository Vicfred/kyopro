# vicfred
# https://atcoder.jp/contests/abc150/tasks/abc150_c
# brute force, permutations
import strutils, sequtils, algorithm, tables, math

let n = stdin.readLine.parseInt
let p = stdin.readLine.split.map parseInt
let q = stdin.readLine.split.map parseInt

var ordering = initTable[seq[int], int]()

var ini = (1..n).toSeq

ordering[ini] = 1
var step = 1
while nextPermutation(ini):
  step += 1
  ordering[ini] = step

echo abs(ordering[p] - ordering[q])

