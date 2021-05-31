# uninhm
# https://atcoder.jp/contests/abc126/tasks/abc126_b
# implementation

import strutils;

let s = stdin.readLine.strip;

var aa, bb: int;
(aa, bb) = (s[0..1].parseInt, s[2..3].parseInt);

if 1 <= aa and aa <= 12: # If aa can be the month
  if 1 <= bb and bb <= 12: # If bb too
    echo "AMBIGUOUS"
  else: # If bb only can be the year
    echo "MMYY"
else: # If aa only can be the year
  if 1 > bb or bb > 12: # If bb too
    echo "NA"
  else: # If bb can be the month
    echo "YYMM"
  
