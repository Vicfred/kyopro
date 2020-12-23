# uninhm
# https://atcoder.jp/contests/abc066/tasks/arc077_a
# data structures
import strutils, deques

let n = stdin.readLine.parseInt
var a = stdin.readLine.split

var b = initDeque[string]();

for i, elem in a:
  if i mod 2 == 0:
    b.addLast(elem)
  else:
    b.addFirst(elem)

if a.len mod 2 == 1:
  while b.len > 0:
    stdout.write b.popLast & " "
else:
  while b.len > 0:
    stdout.write b.popFirst & " "

echo()

