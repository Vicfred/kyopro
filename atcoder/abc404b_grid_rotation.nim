# uninhm
# https://atcoder.jp/contests/abc404/tasks/abc404_b
# implementation

import strutils, sequtils

func diff(S, T: seq[seq[char]]): int =
  result = 0
  for i in 0 ..< S.len:
    for j in 0 ..< S[i].len:
      if S[i][j] != T[i][j]:
        result += 1

proc rotate(S: var seq[seq[char]]) =
  let n = S.len
  var rot: seq[seq[char]] = newSeqWith(n, newSeq[char](n))
  for i in 0 ..< n:
    for j in 0 ..< n:
      rot[i][j] = S[n-j-1][i]
  S = rot

let n = stdin.readLine.parseInt

var S, T: seq[seq[char]];

for _ in 0 ..< n:
  S.add(stdin.readLine.strip.toSeq)
for _ in 0 ..< n:
  T.add(stdin.readLine.strip.toSeq)

var ans = diff(S, T)

for i in 1 .. 3:
  S.rotate
  ans = min(ans, i+diff(S, T))

echo ans
