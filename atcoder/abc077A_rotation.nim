# unihernandez22
# https://atcoder.jp/contests/abc077/tasks/abc077_a
# implementation

import strutils, algorithm

let
  a = stdin.readLine.strip
  b = stdin.readLine.strip

if a.reversed.join == b:
  echo "YES"
else:
  echo "NO"
