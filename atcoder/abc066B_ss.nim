# vicfred
# https://atcoder.jp/contests/abc066/tasks/abc066_b
# string manipulation
import strutils

proc even(str: string): bool =
  if str.len mod 2 != 0:
    return false
  let size = str.len
  let first = str[0..<size div 2]
  let second = str[size div 2..<size]
  if first == second:
    return true
  return false

let s = stdin.readLine.strip

for i in 1..<s.len:
  if even(s[0..<s.len-i]):
    echo s.len-i
    quit()

