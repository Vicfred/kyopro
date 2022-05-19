-- uninhm
-- https://atcoder.jp/contests/abc242/tasks/abc242_a
-- implementation

import Numeric (showFFloat)

solve :: [Int] -> Double
solve [a, b, c, x]
  | x <= a = 1
  | x <= b = dc/(db-da)
  | otherwise = 0
    where da = fromIntegral a
          db = fromIntegral b
          dc = fromIntegral c

main :: IO ()
main = getLine >>= putStrLn . ($ "") . showFFloat Nothing . solve . map read . words
