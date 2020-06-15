# Vicfred
# https://atcoder.jp/contests/abc062/tasks/abc062_b
# implementation
import strutils, sequtils

# function copyright unaihernandez22
proc `*`(s: string, n: int): string =
  result = ""
  for _ in 1..n:
    result &= s

var h, w: int
(h, w) = stdin.readLine.split.map parseInt

echo "#"*(w+2)
for _ in 1..h:
  let line = stdin.readLine.strip
  echo "#"&line&"#"
echo "#"*(w+2)

