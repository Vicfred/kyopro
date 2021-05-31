# uninhm
# https://atcoder.jp/contests/abc128/tasks/abc128_b
# implementation

import strutils, sequtils, algorithm;

type Restaurant = object
  name: string
  score: int
  id: int;

proc cmp(x, y: Restaurant): int =
  if x.name == y.name:
    return -cmp(x.score, y.score)
  return cmp(x.name, y.name)

let n = stdin.readLine.parseInt;
var restaurants = newSeq[Restaurant](n)

for i in 1..n:
  var input = stdin.readLine.split
  let
    name  = input[0]
    score = input[1].parseInt
  restaurants[i-1] = Restaurant(name: name, score: score, id: i)

restaurants.sort cmp

for i in restaurants:
  echo i.id
