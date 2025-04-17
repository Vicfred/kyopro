# vicfred
# https://atcoder.jp/contests/abc244/tasks/abc244_b
# implementation
import sequtils, strutils

let n = stdin.readLine.parseInt
let s = stdin.readLine

var x, y : int

var direction : int
for ch in s:
  if ch == 'R':
    direction += 1
    direction = direction mod 4
    continue
  case direction:
    of 0:
      x += 1
    of 1:
      y -= 1
    of 2:
      x -= 1
    of 3:
      y += 1
    else:
      echo "piola"
echo x, " ", y

