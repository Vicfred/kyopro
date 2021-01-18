# uninhm
# https://atcoder.jp/contests/abc175/tasks/abc175_a
# implementation

from strutils import strip, count;

let
  s = stdin.readLine.strip
  r = s.count('R');

echo(
  if r == 0: 0
  elif s[1] == 'S': 1
  else: r
);
