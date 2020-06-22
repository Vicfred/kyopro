# Vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_e
# bitwise
import strutils, sequtils, sugar

let n = stdin.readLine.parseInt
let a = stdin.readLine.split.map parseInt

var total = foldr(a, a xor b)

echo a.map((x) => x xor total).join(" ")

