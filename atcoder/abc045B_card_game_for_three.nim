# uninhm
# https://atcoder.jp/contests/abc045/tasks/abc045_b
# simulation

import strutils
from sequtils import mapIt

proc player_id(a: char): int = 
  case a:
    of 'a': return 0
    of 'b': return 1
    of 'c': return 2
    else: return -1

var S = (1..3).mapIt(stdin.readLine.strip)

var turn = 0
while S[turn].len > 0:
  (S[turn], turn) = (S[turn][1..<S[turn].len], S[turn][0].player_id)

const players = @["A", "B", "C"]
echo players[turn]
