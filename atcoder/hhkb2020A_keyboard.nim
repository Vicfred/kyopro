# unihernandez22
# https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_a
# implementation

import strutils

let s, t = stdin.readLine.strip

if s == "Y":
  echo t.toUpper()
else:
  echo t
