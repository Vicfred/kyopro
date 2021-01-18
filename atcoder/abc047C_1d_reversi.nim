# uninhm
# https://atcoder.jp/contests/abc047/tasks/arc063_a
# greedy

from strutils import strip;

let s = stdin.readLine.strip;

var ans = 0
var last = s[0];
for c in s:
  if c != last:
    inc ans
  last = c

ans.echo