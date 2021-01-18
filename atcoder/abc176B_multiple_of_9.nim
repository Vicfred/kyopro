# uninhm
# https://atcoder.jp/contests/abc176/tasks/abc176_b
# implementation

import strutils

let n = stdin.readLine.strip
var char_sum = 0

for c in n:
  char_sum += parseInt($c)

echo(
  if char_sum mod 9 == 0:
    "Yes"
  else:
    "No"
)
