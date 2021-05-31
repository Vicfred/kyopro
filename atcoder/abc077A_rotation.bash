# uninhm
# https://atcoder.jp/contests/abc077/tasks/abc077_a
# implementation

read a
read b

if [ $(rev <<< $a) == $b ]; then
  echo YES
else
  echo NO
fi
