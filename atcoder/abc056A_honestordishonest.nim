# Vicfred
# https://atcoder.jp/contests/abc056/tasks/abc056_a
# implementation
import strutils, sequtils

let line = stdin.readLine.split
let a: char = line[0][0]
let b: char = line[1][0]

if a == 'H':
  b.echo
else:
  if b == 'H':
    'D'.echo
  else:
    'H'.echo

