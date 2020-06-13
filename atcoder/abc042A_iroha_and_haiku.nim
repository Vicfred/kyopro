# unihernandez22
# https://atcoder.jp/contests/abc042/tasks/abc042_a
# implementation

from strutils import split, parseInt
import sequtils

var a = stdin.readLine.split.map parseInt

var
  five = 0
  seven = 0

for i in a:
  if i == 5:
    inc five
  elif i == 7:
    inc seven

if five == 2 and seven == 1:
  echo "YES"
else:
  echo "NO"
