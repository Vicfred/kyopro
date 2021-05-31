# uninhm
# https://atcoder.jp/contests/abc127/tasks/abc127_a
# implementation

read a b

if (( a >= 13 )); then
  echo $b
elif (( a >= 6 )); then
  expr $b / 2
else
  echo 0
fi
