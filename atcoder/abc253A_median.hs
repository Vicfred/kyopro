-- uninhm
-- https://atcoder.jp/contests/abc253/tasks/abc253_a
-- implementation

import Data.Bool (bool)
import Data.List (sort)

main :: IO ()
main = getLine >>= putStrLn . solve . map read . words
  where
    solve :: [Int] -> String
    solve l =
      bool "No" "Yes"
      $ l !! 1 == sort l !! 1
