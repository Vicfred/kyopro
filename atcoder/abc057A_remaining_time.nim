# vicfred
# https://atcoder.jp/contests/abc057/tasks/abc057_a
# implementation
import strutils, sequtils

var a, b: int
(a, b) = stdin.readLine.split.map(parseInt)
echo `mod`(a+b, 24)

