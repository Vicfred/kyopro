-- uninhm
-- https://atcoder.jp/contests/abc178/tasks/abc178_a
-- implementation

import Data.Bits (xor)

main = interact $ show . xor 1 . (read :: String -> Int)
