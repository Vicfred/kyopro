# unihernandez22
# https://atcoder.jp/contests/abc136/tasks/abc136_b
# implementation

from strutils import parseInt, intToStr

let n = stdin.readLine.parseInt

var ans = 0
for i in 1..n:
  if i.intToStr.len mod 2 == 1: inc ans

ans.echo
