# Vicfred
# https://atcoder.jp/contests/abc058/tasks/abc058_b
# string manipulation
import strutils, deques

let o = stdin.readLine.strip
let e = stdin.readLine.strip

var O = initDeque[char]()
for ch in o:
  O.addLast(char(ch))

var E = initDeque[char]()
for ch in e:
  E.addLast(char(ch))

var idx = 1
while O.len > 0 or E.len > 0:
  if idx mod 2 == 1 and O.len > 0:
    stdout.write O.peekFirst
    O.popFirst
  elif idx mod 2 == 0 and E.len > 0:
    stdout.write E.peekFirst
    E.popFirst
  inc idx
echo ""
