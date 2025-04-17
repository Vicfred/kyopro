# vicfred
# https://atcoder.jp/contests/abl/tasks/abl_b
# math
import strutils, sequtils, algorithm

var a, b, c, d: int
(a, b, c, d) = stdin.readLine.split.map parseInt
echo if (max(a, c) <= min(b, d)): "Yes" else: "No"

