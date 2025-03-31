# Vicfred
# https://atcoder.jp/contests/abc399/tasks/abc399_a
# implementation
import strutils

let n = stdin.readLine.parseInt
let s = stdin.readLine
let t = stdin.readLine

var ans : int
for i in 0..<n:
  if s[i] != t[i]:
    ans += 1
echo ans
