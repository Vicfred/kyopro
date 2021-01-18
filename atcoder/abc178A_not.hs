-- uninhm
-- https://atcoder.jp/contests/abc178/tasks/abc178_a
-- implementation

import Data.Bits (xor)

main = do
  li <- getLine
  let x = read li :: Int
  print $ x `xor` 1
