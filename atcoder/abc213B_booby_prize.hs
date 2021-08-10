-- uninhm
-- https://atcoder.jp/contests/abc213/tasks/abc213_b
-- implementation

import Data.List (sortBy)

solve :: [Int] -> Int
solve =
  snd . (!! 1) . sortBy (flip compare) . flip zip [1..]

main = getLine >> getLine >>= print . solve . map read . words
