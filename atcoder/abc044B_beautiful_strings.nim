# unihernandez22
# https://atcoder.jp/contests/abc044/tasks/abc044_b
# implementation

import strutils, tables

let w = stdin.readLine.strip

var letters = initCountTable[char]()
for c in w:
  letters.inc(c)

for i in letters.values:
  if i mod 2 != 0:
    echo "No"
    quit()
echo "Yes"
