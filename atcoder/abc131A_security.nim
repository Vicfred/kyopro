# unihernandez22
# https://atcoder.jp/contests/abc131/tasks/abc131_a
# implementation

from strutils import strip;

let s = stdin.readLine.strip;

var last = '*';
for i in s:
  if i == last:
    echo "Bad"
    quit()
  last = i;
echo "Good"
