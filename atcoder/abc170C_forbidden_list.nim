# uninhm
# https://atcoder.jp/contests/abc170/tasks/abc170_c
# implementation

import strutils, sequtils

var x, n: int
(x, n) = stdin.readLine.split.map(parseInt)

var p: seq[int]
if n > 0:
  p = stdin.readLine.split.map(parseInt)
else:
  discard stdin.readLine
  echo x
  quit()


var i = 0
var sel: int
var yes = true
while yes:
  if x+i notin p:
    sel = 0
    yes = false
  if x-i notin p:
    sel = 1
    yes = false
  if yes: inc i

if sel == 0:
  echo x+i
elif sel == 1:
  echo x-i
