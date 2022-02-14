# Vicfred
# https://atcoder.jp/contests/abc198/tasks/abc198_b
# string manipulation
import algorithm
import strutils

var ins = stdin.readLine
var sni = ins.reversed.join

if ins == sni:
  echo "Yes"
  quit 0

var zeroes : int
for ch in sni:
  if ch == '0':
    zeroes += 1
  else:
    break

var leading : int
for ch in ins:
  if ch == '0':
    leading += 1
  else:
    break

let difference = zeroes - leading
for i in 1..difference:
  ins = '0' & ins
sni = ins.reversed.join
if ins == sni:
  echo "Yes"
else:
  echo "No"
