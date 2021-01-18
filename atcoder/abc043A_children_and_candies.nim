# uninhm
# https://atcoder.jp/contests/abc043/tasks/abc043_a
# math

import strutils

let n = stdin.readLine.strip.parseInt

echo n*(n-1) div 2 + n
