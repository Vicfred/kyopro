# vicfred
# https://atcoder.jp/contests/abc059/tasks/abc059_a
# implementation
import strutils

var s1, s2, s3: string
(s1, s2, s3) = stdin.readLine.split
s1 = s1.toUpper
s2 = s2.toUpper
s3 = s3.toUpper

echo s1[0] & s2[0] & s3[0]

