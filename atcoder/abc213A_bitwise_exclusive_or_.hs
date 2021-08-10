-- uninhm
-- https://atcoder.jp/contests/abc213/tasks/abc213_a
-- implementation

import Data.Bits (xor)

main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ xor a b
