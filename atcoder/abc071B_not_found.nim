# uninhm
# https://atcoder.jp/contests/abc071/tasks/abc071_b
# implementation

from strutils import strip
let s = stdin.readLine.strip

for letter in 'a'..'z':
  if letter notin s:
    echo letter
    quit()
echo "None"
