# unihernandez22
# https://atcoder.jp/contests/abc168/tasks/abc168_b
# implementation

from strutils import strip, parseInt

let k = stdin.readLine.parseInt
let s = stdin.readLine.strip

if s.len > k:
  echo s[0..<k] & "..."
else:
  echo s
