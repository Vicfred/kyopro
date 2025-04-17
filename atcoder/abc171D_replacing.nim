# vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_d
# maps, data structures, counting, bucket
import strutils, sequtils, tables, math

let n = stdin.readLine.parseInt
let a = stdin.readLine.split.map parseInt
let q = stdin.readLine.parseInt

var counter = initTable[int, int]()

for item in a:
  discard counter.mgetOrPut(item, 0)
  counter[item] += 1

var total = sum(a)

for query in 1..q:
  var b, c: int
  (b, c) = stdin.readLine.split.map parseInt
  let taken = counter.mgetOrPut(b, 0)
  counter[b] = 0
  total -= taken*b
  total += taken*c
  counter[c] = counter.getOrDefault(c) + taken
  echo total

