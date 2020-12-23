# uninhm
# https://atcoder.jp/contests/abc050/tasks/abc050_a
# implementation

import strutils

let s = stdin.readLine.split

if s[1] == "+":
  echo s[0].parseInt + s[2].parseInt
else:
  echo s[0].parseInt - s[2].parseInt
