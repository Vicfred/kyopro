# Vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_c
# implementation, math
import strutils, algorithm

var n = stdin.readLine.parseInt

var ans = ""

while n > 0:
  n -= 1
  ans &= char(ord('a') + n mod 26)
  n = n div 26

ans.reverse
echo ans

