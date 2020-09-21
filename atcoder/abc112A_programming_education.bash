# unihernandez22
# https://atcoder.jp/contests/abc112/tasks/abc112_a
# implementation

read age

if [ $age -eq 1 ]; then
  echo Hello World
else
  read a
  read b
  expr $a + $b
fi
