# uninhm
# https://atcoder.jp/contests/abc049/tasks/abc049_a
# implementation

from strutils import strip

if stdin.readLine.strip in @["a", "e", "i", "o", "u"]:
  echo "vowel"
else:
  echo "consonant"
