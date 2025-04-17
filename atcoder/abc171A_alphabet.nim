# vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_a
# implementation, string manipulation
import strutils

let s = stdin.readLine.strip

if s[0].isUpperAscii:
  echo "A"
else:
  echo "a"

