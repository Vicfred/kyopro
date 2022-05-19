# Vicfred
# https://atcoder.jp/contests/abc244/tasks/abc244_d
# implementation
import sequtils, strutils, tables, algorithm

let s = stdin.readLine.split
let t = stdin.readLine.split

var fixed : int

for i in 0..2:
  if s[i] == t[i]:
    fixed += 1

if fixed == 1:
  echo "No"
else:
  echo "Yes"
