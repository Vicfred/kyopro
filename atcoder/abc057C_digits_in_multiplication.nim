# uninhm
# https://atcoder.jp/contests/abc057/submissions/15385990
# math

from strutils import parseInt, intToStr
from math import sqrt

let n = stdin.readLine.parseInt

var ans = int.high
for i in 1 .. n.float.sqrt.int:
  if n mod i == 0:
    ans = min(ans, max(i.intToStr.len, intToStr(n div i).len))

echo ans
