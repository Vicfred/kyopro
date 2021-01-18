# uninhm
# https://atcoder.jp/contests/abc052/tasks/abc052_b
# simulation

discard stdin.readLine
let s = stdin.readLine

var ans = 0
var x = 0
for i in s:
  case i:
    of 'I': inc x
    of 'D': dec x
    else: echo "WTF"
  ans = max(ans, x)

echo ans
