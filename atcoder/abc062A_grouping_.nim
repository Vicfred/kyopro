# uninhm
# https://atcoder.jp/contests/abc062/tasks/abc062_a
# implementation

from strutils import split
import tables

let groups = {"1": 1, "3": 1, "5": 1, "7": 1, "8": 1, "10": 1, "12": 1,
              "4": 2, "6": 2, "9": 2, "11": 2,
              "2": 3}.toTable

var x, y: string
(x, y) = stdin.readLine.split

if groups[x] == groups[y]:
  echo "Yes"
else:
  echo "No"
