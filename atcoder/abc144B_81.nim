# uninhm
# https://atcoder.jp/contests/abc144/tasks/abc144_b
# implementation

from strutils import parseInt

let n = stdin.readLine.parseInt

var res: float
for i in 1 .. 9:
  res = n / i
  if res == res.int.float and
      res <= 9 and res >= 1:
    echo "Yes"
    quit()
echo "No"
