# vicfred
# https://atcoder.jp/contests/abc063/tasks/abc063_b
# implementation
import strutils, tables

let s = stdin.readLine.strip
var letters = initCountTable[char]()

for c in s:
  letters.inc(c)

for item in letters.values:
  if item > 1:
    echo "no"
    quit()
echo "yes"

