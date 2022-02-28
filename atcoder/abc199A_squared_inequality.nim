# Vicfred
# https://atcoder.jp/contests/abc199/tasks/abc199_a
# implementation
import sequtils, strutils

var A, B, C : int
(A, B, C) = stdin.readLine.split.map parseInt

if A*A + B*B < C*C:
  echo "Yes"
else:
  echo "No"
