-- uninhm
-- https://atcoder.jp/contests/abc199/tasks/abc199_a
-- implementation

import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . solve . map read . words where
  solve [a, b, c] = bool "No" "Yes" $ a*a + b*b < c*c
