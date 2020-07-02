# unihernandez22
# https://atcoder.jp/contests/abc147/tasks/abc147_b
# string manipulation

import strutils;

let s = stdin.readLine.strip;

var ans = 0
for i in 0 ..< s.len div 2:
  if s[i] != s[^(i+1)]: inc ans

ans.echo
