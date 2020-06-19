# unihernandez22
# https://atcoder.jp/contests/abc072/tasks/abc072_b
# implementation

from strutils import strip

var s = stdin.readLine.strip
var ans: string

var i = 0
while i < s.len:
  ans.add(s[i])
  i += 2

echo ans
