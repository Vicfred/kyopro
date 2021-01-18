# uninhm
# https://atcoder.jp/contests/arc106/tasks/arc106_a
# math

import strutils, math

let n = stdin.readLine.parseInt

for a in 1 .. 37:
  for b in 1 .. 25:
    if 3^a + 5^b == n:
      echo a, ' ', b
      quit()

echo -1
