# vicfred
# https://atcoder.jp/contests/abc076/tasks/abc076_c
# string manipulation
import strutils

var s = stdin.readLine.strip
let t = stdin.readLine.strip

var idx = -1

for i in 0..(s.len-t.len):
  if s[i] == '?' or s[i] == t[0]:
    var matched = true
    for j in 0..<t.len:
      if s[i+j] != '?' and s[i+j] != t[j]:
        matched = false
        break
    if matched:
      idx = i

if idx == -1:
  echo "UNRESTORABLE"
  quit()

for i in 0..<t.len:
  s[idx+i] = t[i]

for ch in s:
  if ch == '?':
    stdout.write 'a'
  else:
    stdout.write ch
echo ""

