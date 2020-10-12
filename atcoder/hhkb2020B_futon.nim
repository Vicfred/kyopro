import strutils, sequtils

var H, W: int
(H, W) = stdin.readLine.split.map parseInt

let S = (1 .. H).mapIt(stdin.readLine.strip)

var ans = 0

for i in 0 ..< H:
  for j in 0 ..< W:
    if S[i][j] == '.':
      if i+1 < H and S[i+1][j] == '.':
        inc ans
      if j+1 < W and S[i][j+1] == '.':
        inc ans

ans.echo
