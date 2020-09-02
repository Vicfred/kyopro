# Vicfred
# https://atcoder.jp/contests/abc177/tasks/abc177_a
# math
import strutils, sequtils

var d, t, s: int
(d, t, s) = stdin.readLine.split.map parseInt

var time = d/s

if float(t) >= time:
    echo "Yes"
else:
    echo "No"

