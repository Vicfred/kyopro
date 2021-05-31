# uninhm
# https://atcoder.jp/contests/abc109/tasks/abc109_a
# math

read a b

if [ $(expr `expr $a \* $b` % 2) -eq 1 ]; then
  echo Yes
else
  echo No
fi
