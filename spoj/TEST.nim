# unihernandez22
# https://www.spoj.com/problems/TEST/
# implementation

import strutils

var i = stdin.readLine.strip
while i != "42":
  echo i
  i = stdin.readLine.strip
