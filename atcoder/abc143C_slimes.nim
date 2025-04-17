# vicfred
# https://atcoder.jp/contests/abc143/tasks/abc143_c
# implementation
import strutils

let n = stdin.readLine.parseInt
let s = stdin.readLine.strip

var x = 0
var ans = 1
var last = s[0]

while x < s.len:
  if s[x] != last:
    ans += 1
    last = s[x]
  x += 1

echo ans

