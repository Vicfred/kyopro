import Data.List (sort)
-- vicfred
-- https://atcoder.jp/contests/abc310/tasks/abc310_a
-- implementation
main :: IO ()
main = do
  [n, p, q] <- map read . words <$> getLine :: IO [Int]
  d <- sort . map read . words <$> getLine :: IO [Int]
  print $ min (q + head d) p
