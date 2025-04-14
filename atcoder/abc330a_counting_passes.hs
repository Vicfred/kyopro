-- vicfred
-- https://atcoder.jp/contests/abc330/tasks/abc330_a
-- implementation
main :: IO ()
main = do
  [n, l] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  print . length $ filter (>= l) a
