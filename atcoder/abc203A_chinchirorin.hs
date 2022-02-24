-- uninhm
-- https://atcoder.jp/contests/abc203/tasks/abc203_a
-- implementation

import Data.List (sort)

main :: IO ()
main = do
  [a, b, c] <- sort . map read . words <$> getLine :: IO [Int]
  if a == b then print c
  else if b == c then print a
  else print 0
