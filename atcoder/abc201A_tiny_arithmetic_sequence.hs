-- uninhm
-- https://atcoder.jp/contests/abc201/tasks/abc201_a
-- implementation

import Data.Bool (bool)
import Data.List (sort)

differences :: [Int] -> [Int]
differences xs = tail $ zipWith (flip (-)) xs (0:xs)

main :: IO ()
main = getLine >>= putStrLn
  . bool "No" "Yes"
  . (== 0)
  . sum
  . differences
  . differences
  . sort
  . map read
  . words
